import 'dart:convert';
import 'dart:io';

import 'package:openapi_spec/v30/v30.dart';
import 'package:test/test.dart';

void main() {
  group('OpenAPI v3.0 Test', () {
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

    test('parses full OpenAPI 3.0 petstore spec', () {
      final file = File('test/fixtures/petstore_v30.json');
      final content = file.readAsStringSync();
      final orgJson = jsonDecode(content) as Map<String, dynamic>;
      final spec = OpenAPIParser.parseJson(content);
      expect(spec, isA<OpenAPI>());
      expect(spec.openapi, '3.0.4');
      expect(spec.info, isNotNull);

      expect(spec.info!.title, orgJson['info']['title']);
      expect(spec.info!.version, orgJson['info']['version']);
      expect(spec.info!.description, orgJson['info']['description']);
      expect(spec.info!.termsOfService, orgJson['info']['termsOfService']);
      expect(spec.info!.contact, isNotNull);
      expect(spec.info!.contact!.name, orgJson['info']['contact']['name']);
      expect(spec.info!.contact?.url, orgJson['info']['contact']?['url']);
      expect(spec.info!.license, isNotNull);
      expect(spec.info!.license!.name, orgJson['info']['license']['name']);
      expect(spec.info!.license?.url, orgJson['info']['license']?['url']);

      // externalDocs
      expect(spec.externalDocs, isNotNull);
      expect(
        spec.externalDocs!.description,
        orgJson['externalDocs']['description'],
      );
      expect(spec.externalDocs!.url, orgJson['externalDocs']['url']);

      // servers
      expect(spec.servers.length, orgJson['servers']?.length ?? 0);
      for (var i = 0; i < spec.servers.length; i++) {
        expect(spec.servers[i].url, orgJson['servers'][i]['url']);
        expect(
          spec.servers[i].description,
          orgJson['servers'][i]['description'],
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
      // compoents
    });
  });
}
