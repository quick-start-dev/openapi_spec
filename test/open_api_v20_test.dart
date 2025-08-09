import 'dart:convert';
import 'dart:io';

import 'package:openapi_spec/v20/v20.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiParser V20 Test', () {
    test('toJson includes extensions', () {
      const spec = OpenAPI(
        info: Info(title: 'Test API', version: '1.0.0'),
        extensions: {'x-meta': 'custom metadata', 'x-version': 'v2'},
      );

      final json = spec.toJson();

      expect(json['info'], isNotNull);
      expect(json['x-meta'], 'custom metadata');
      expect(json['x-version'], 'v2');
    });
    test('parses full OpenAPI 2.0 petstore spec', () async {
      final file = File('test/fixtures/petstore_v2.json');
      final content = await file.readAsString();
      final orgJson = jsonDecode(content) as Map<String, dynamic>;
      final spec = OpenAPiParser.parseJson(content);
      matchSpecV20WithJson(spec, orgJson);
    });
  });
}

void matchSpecV20WithJson(OpenAPI spec, Map<String, dynamic> orgJson) {
  expect(spec, isA<OpenAPI>());
  expect(spec.swagger, '2.0');
  expect(spec.info, isNotNull);

  expect(spec.info!.title, orgJson['info']['title']);
  expect(spec.info!.version, orgJson['info']['version']);
  expect(spec.info!.description, orgJson['info']['description']);
  expect(spec.info!.termsOfService, orgJson['info']['termsOfService']);
  expect(spec.info!.contact, isNotNull);
  expect(spec.info!.contact!.name, orgJson['info']['contact']['name']);
  expect(spec.info!.contact?.url, orgJson['info']['contact']?['url']);
  expect(spec.info!.contact!.email, orgJson['info']['contact']['email']);
  expect(spec.info!.license, isNotNull);
  expect(spec.info!.license!.name, orgJson['info']['license']['name']);
  expect(spec.info!.license!.url, orgJson['info']['license']['url']);

  //host
  expect(spec.host, orgJson['host']);

  //basePath
  expect(spec.basePath, orgJson['basePath']);

  //tags
  expect(spec.tags.length, orgJson['tags'].length);
  for (var i = 0; i < spec.tags.length; i++) {
    expect(spec.tags[i].name, orgJson['tags'][i]['name']);
    expect(spec.tags[i].description, orgJson['tags'][i]['description']);
    expect(
      spec.tags[i].externalDocs?.toJson(),
      orgJson['tags'][i]['externalDocs'],
    );
  }

  // schemes
  expect(spec.schemes, orgJson['schemes']);

  //consumes
  expect(spec.consumes, orgJson['consumes']);

  //produces
  expect(spec.produces, orgJson['produces']);
  // externalDocs
  expect(spec.externalDocs?.toJson(), orgJson['externalDocs']);

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
      expect(operation.consumes, operationJson['consumes']);
      expect(operation.produces, operationJson['produces']);
      expect(operation.deprecated, operationJson['deprecated']);

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
        operation.responses.length,
        operationJson['responses']?.length ?? 0,
      );
      for (var i = 0; i < operation.responses.length; i++) {
        final key = operation.responses.keys.toList()[i];
        final response = operation.responses[key];
        final responseJson =
            operationJson['responses'][key] as Map<String, dynamic>;

        expect(response?.toJson(), responseJson);
      }

      // Check security requirements
      expect(operation.security.length, operationJson['security']?.length ?? 0);
      for (var i = 0; i < operation.security.length; i++) {
        final securityReq = operation.security[i];
        final securityReqJson =
            operationJson['security'][i] as Map<String, dynamic>;

        expect(securityReq.toJson(), securityReqJson);
      }
    });
  }

  // securityDefinitions
  expect(
    spec.securityDefinitions.length,
    orgJson['securityDefinitions'].length,
  );
  for (var i = 0; i < spec.securityDefinitions.length; i++) {
    final key = spec.securityDefinitions.keys.toList()[i];
    final securityDefinition = spec.securityDefinitions[key];
    expect(securityDefinition, isNotNull);
    expect(securityDefinition!.toJson(), orgJson['securityDefinitions'][key]);
  }
  // definitions
  expect(spec.definitions.length, orgJson['definitions'].length);
  for (var i = 0; i < spec.definitions.length; i++) {
    final key = spec.definitions.keys.toList()[i];
    final definition = spec.definitions[key];
    expect(definition, isNotNull);
    expect(definition!.toJson(), orgJson['definitions'][key]);
  }
}
