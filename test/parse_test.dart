import 'dart:io';

import 'package:openapi_spec/openapi_spec.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiParser', () {
    group('parseYaml', () {
      test('should parse a valid OpenAPI YAML file', () {
        final yamlContent =
            File('test/fixtures/openapi-v3.yaml').readAsStringSync();
        expect(yamlContent, isNotNull);

        final spec = OpenApiParser.parseYaml(yamlContent);
        expect(spec, isNotNull);
        expect(spec, isA<OpenApi31Spec>());
        expect(spec.openapi, '3.1.0');
        expect(spec.info, isNotNull);

        expect(spec.info!.title, 'Train Travel API');
        expect(spec.info!.version, '1.2.1');
        expect(spec.info!.extensions, hasLength(1));

        ///tags
        expect(spec.tags, hasLength(4));
      });
    });
  });
}
