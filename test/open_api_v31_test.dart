import 'dart:convert';
import 'dart:io';

import 'package:openapi_spec/v31/v31.dart';
import 'package:test/test.dart';

void main() {
  group('OpenAPI v3.1 Test', () {
    test('toJson includes extensions', () {
      const spec = OpenAPI(
        openapi: '3.1.0',
        info: Info(title: 'Test API', version: '1.0.0'),
        extensions: {'x-meta': 'custom metadata', 'x-version': 'v2'},
      );

      final json = spec.toJson();

      expect(json['info'], isNotNull);
      expect(json['x-meta'], 'custom metadata');
      expect(json['x-version'], 'v2');
    });

    test('parses full OpenAPI 3.1 petstore spec', () {
      final file = File('test/fixtures/petstore_v31.json');
      final content = file.readAsStringSync();
      final orgJson = jsonDecode(content) as Map<String, dynamic>;
      final spec = OpenAPIParser.parseJson(content);
      expect(spec, isA<OpenAPI>());
      expect(spec.openapi, '3.1.0');
      expect(spec.info, isNotNull);

      expect(spec.info.title, orgJson['info']['title']);
      expect(spec.info.version, orgJson['info']['version']);
      expect(spec.info.description, orgJson['info']['description']);
      expect(spec.info.termsOfService, orgJson['info']['termsOfService']);
      expect(spec.info.contact, isNotNull);
      expect(spec.info.contact!.name, orgJson['info']['contact']['name']);
      expect(spec.info.contact?.url, orgJson['info']['contact']?['url']);
      expect(spec.info.license, isNotNull);
      expect(spec.info.license!.name, orgJson['info']['license']['name']);
      expect(spec.info.license?.url, orgJson['info']['license']?['url']);

      // externalDocs
      expect(spec.externalDocs, isNotNull);
      expect(
        spec.externalDocs!.description,
        orgJson['externalDocs']['description'],
      );
      expect(spec.externalDocs!.url, orgJson['externalDocs']['url']);

      // servers
      expect(spec.servers?.length, orgJson['servers']?.length);
      for (var i = 0; i < (spec.servers?.length ?? 0); i++) {
        expect(spec.servers![i].url, orgJson['servers'][i]['url']);
        expect(
          orgJson['servers']?[i]['description'],
          spec.servers![i].description,
        );
      }

      // tags
      expect(spec.tags.length, orgJson['tags']?.length ?? 0);
      for (var i = 0; i < spec.tags.length; i++) {
        expect(spec.tags[i].name, orgJson['tags'][i]['name']);
        expect(spec.tags[i].description, orgJson['tags'][i]['description']);
        expect(
          spec.tags[i].externalDocs?.description,
          orgJson['tags'][i]['externalDocs']?['description'],
        );
        expect(
          spec.tags[i].externalDocs?.url,
          orgJson['tags'][i]['externalDocs']?['url'],
        );
      }

      // paths
      expect(spec.paths.length, orgJson['paths'].length);
      for (var i = 0; i < spec.paths.length; i++) {
        final key = spec.paths.keys.toList()[i];
        final path = spec.paths[key];
        expect(path, isNotNull);
        (orgJson['paths'][key] as Map<String, dynamic>).forEach((
          method,
          operationData,
        ) {
          final operationJson = operationData as Map<String, dynamic>;
          Operation? operation;

          switch (method) {
            case 'get':
              operation = path?.get;
            case 'post':
              operation = path?.post;
            case 'put':
              operation = path?.put;
            case 'delete':
              operation = path?.delete;
            case 'patch':
              operation = path?.patch;
          }
          expect(operation, isNotNull);
          expect(operation!.tags, operationJson['tags']);
          expect(operation.summary, operationJson['summary']);
          expect(operation.description, operationJson['description']);
          expect(operation.operationId, operationJson['operationId']);
          expect(operation.deprecated, operationJson['deprecated']);
          expect(
            operation.externalDocs?.toJson(),

            operationJson['externalDocs'],
          );

          // Check parameters
          expect(
            operation.parameters.length,
            operationJson['parameters']?.length ?? 0,
          );
          for (var i = 0; i < operation.parameters.length; i++) {
            final param = operation.parameters[i];
            final paramJson =
                operationJson['parameters'][i] as Map<String, dynamic>;

            expect(param.toJson(), paramJson);
          }

          // check  responses
          expect(
            operationJson['responses']?.length ?? 0,

            operation.responses.length,
          );
          for (var i = 0; i < operation.responses.length; i++) {
            final key = operation.responses.keys.toList()[i];
            final response = operation.responses[key];
            final responseJson =
                operationJson['responses'][key] as Map<String, dynamic>;

            expect(response?.toJson(), responseJson);
          }

          // Check security
          expect(
            operation.security.length,
            operationJson['security']?.length ?? 0,
          );
          for (var i = 0; i < operation.security.length; i++) {
            final securityReq = operation.security[i];
            final securityReqJson =
                operationJson['security'][i] as Map<String, dynamic>;

            expect(securityReq.toJson(), securityReqJson);
          }

          // server
          expect(
            operation.servers?.length ?? 0,
            operationJson['servers']?.length ?? 0,
          );
          for (var i = 0; i < (operation.servers?.length ?? 0); i++) {
            final server = operation.servers?[i];
            final serverJson =
                operationJson['servers'][i] as Map<String, dynamic>;
            expect(server?.toJson(), serverJson);
          }

          //end
        });
      }

      // compoents
      expect(
        orgJson['components']?['schemas']?.length,
        spec.components?.schemas?.length,
      );
      for (var i = 0; i < (spec.components?.schemas?.length ?? 0); i++) {
        final key = spec.components?.schemas?.keys.toList()[i];
        final schema = spec.components?.schemas?[key];
        final schemaJson = orgJson['components']['schemas'][key];
        expect(schema, isNotNull);
        expect(schema?.toJson(), schemaJson);
      }

      // requestBodies
      expect(
        spec.components?.requestBodies?.length,
        orgJson['components']?['requestBodies']?.length,
      );
      for (var i = 0; i < (spec.components?.requestBodies?.length ?? 0); i++) {
        final key = spec.components?.requestBodies?.keys.toList()[i];
        final requestBody = spec.components?.requestBodies?[key];
        final requestBodyJson = orgJson['components']['requestBodies'][key];
        expect(requestBody, isNotNull);
        expect(requestBody?.toJson(), requestBodyJson);
      }

      // securitySchemes
      expect(
        spec.components?.securitySchemes?.length,
        orgJson['components']?['securitySchemes']?.length,
      );
      for (
        var i = 0;
        i < (spec.components?.securitySchemes?.length ?? 0);
        i++
      ) {
        final key = spec.components?.securitySchemes?.keys.toList()[i];
        final securityScheme = spec.components?.securitySchemes?[key];
        final securitySchemeJson =
            orgJson['components']['securitySchemes'][key];
        expect(securityScheme, isNotNull);
        expect(securityScheme?.toJson(), securitySchemeJson);
      }

      /// headers
      expect(
        spec.components?.headers?.length,
        orgJson['components']?['headers']?.length,
      );
      for (var i = 0; i < (spec.components?.headers?.length ?? 0); i++) {
        final key = spec.components?.headers?.keys.toList()[i];
        final header = spec.components?.headers?[key];
        final headerJson = orgJson['components']['headers'][key];
        expect(header, isNotNull);
        expect(header?.toJson(), headerJson);
      }

      /// links
      expect(
        orgJson['components']?['links']?.length,
        spec.components?.links?.length,
      );
      for (var i = 0; i < (spec.components?.links?.length ?? 0); i++) {
        final key = spec.components?.links?.keys.toList()[i];
        final link = spec.components?.links?[key];
        final linkJson = orgJson['components']['links'][key];
        expect(link, isNotNull);
        expect(link?.toJson(), linkJson);
      }

      /// Examples
      expect(
        spec.components?.examples?.length,
        orgJson['components']?['examples']?.length,
      );
      for (var i = 0; i < (spec.components?.examples?.length ?? 0); i++) {
        final key = spec.components?.examples?.keys.toList()[i];
        final example = spec.components?.examples?[key];
        final exampleJson = orgJson['components']['examples'][key];
        expect(example, isNotNull);
        expect(example?.toJson(), exampleJson);
      }

      /// parameters
      expect(
        spec.components?.parameters?.length,
        orgJson['components']?['parameters']?.length,
      );
      for (var i = 0; i < (spec.components?.parameters?.length ?? 0); i++) {
        final key = spec.components?.parameters?.keys.toList()[i];
        final parameter = spec.components?.parameters?[key];
        final parameterJson = orgJson['components']['parameters'][key];
        expect(parameter, isNotNull);
        expect(parameter?.toJson(), parameterJson);
      }

      /// callbacks
      expect(
        spec.components?.callbacks?.length,
        orgJson['components']?['callbacks']?.length,
      );
      for (var i = 0; i < (spec.components?.callbacks?.length ?? 0); i++) {
        final key = spec.components?.callbacks?.keys.toList()[i];
        final callback = spec.components?.callbacks?[key];
        final callbackJson = orgJson['components']['callbacks'][key];
        expect(callback, isNotNull);
        expect(callback?.toJson(), callbackJson);
      }

      //end
    });
  });
}
