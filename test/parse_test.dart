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
        spec as OpenApi31Spec;
        expect(spec.openapi, '3.1.0');
        expect(spec.info, isNotNull);

        expect(spec.info!.title, 'Train Travel API');
        expect(spec.info!.version, '1.2.1');
        expect(spec.info!.extensions, hasLength(1));

        ///tags
        expect(spec.tags, hasLength(4));

        /// extensions
        expect(spec.extensions, hasLength(2));

        /// paths
        expect(spec.paths, hasLength(5));

        /// webhooks
        expect(spec.webhooks, hasLength(1));

        /// components
        expect(spec.components, isNotNull);
        expect(spec.components!.parameters, hasLength(2));
        for (final parameter in spec.components!.parameters.entries) {
          expect(parameter.key, isIn(['page', 'limit']));
        }
        expect(spec.components!.schemas, hasLength(11));
        expect(spec.components!.requestBodies, hasLength(0));
        expect(spec.components!.headers, hasLength(3));
        for (final header in spec.components!.headers.entries) {
          expect(
            header.key,
            isIn(['Cache-Control', 'RateLimit', 'Retry-After']),
          );
        }

        expect(spec.components!.responses, hasLength(7));
        expect(spec.components!.securitySchemes, hasLength(1));
        final securityScheme = spec.components!.securitySchemes.values.first;
        expect(securityScheme.type, 'oauth2');
        expect(
          securityScheme.description,
          'OAuth 2.0 authorization code following RFC8725 best practices.',
        );
        expect(securityScheme.flows!.authorizationCode, isNotNull);

        final flow = securityScheme.flows!.authorizationCode!;
        expect(flow.authorizationUrl, 'https://example.com/oauth/authorize');
        expect(flow.tokenUrl, 'https://example.com/oauth/token');
        expect(flow.scopes, hasLength(2));
        expect(flow.scopes.containsKey('read'), true);
        expect(flow.scopes.containsKey('write'), true);

        final convertedYaml = OpenApiParser.toYamlString(spec);
        expect(convertedYaml, isNotNull);
        expect(convertedYaml, isA<String>());

        final newSpec = OpenApiParser.parseYaml(convertedYaml);

        expect(spec, newSpec);
      });
    });
  });
}
