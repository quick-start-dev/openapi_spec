import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:openapi_spec/openapi_spec.dart';
import 'package:test/test.dart';

void main() {
  const deepEquality = DeepCollectionEquality();

  group('Schema Model - OpenAPI 2.0', () {
    test('covering all supported schema properties', () {
      final json = {
        'type': 'object',
        'title': 'UserV20Comprehensive',
        'description': 'A comprehensive schema for OpenAPI 2.0',
        r'$ref': '#/definitions/User',
        'required': ['id', 'name'],
        'properties': {
          'id': {'type': 'integer', 'format': 'int64'},
          'name': {
            'type': 'string',
            'pattern': r'^[A-Za-z]+$',
            'minLength': 3,
            'maxLength': 50,
            'deprecated': true,
          },
          'status': {
            'type': 'string',
            'enum': ['active', 'inactive', 'pending'],
            'default': 'pending',
          },
        },
        'xml': {
          'name': 'user',
          'namespace': 'http://example.com/api',
          'prefix': 'api',
          'wrapped': false,
        },
        'example': {'id': 123, 'name': 'JohnDoe', 'status': 'active'},
        'additionalProperties': {'type': 'string'},
        'allowEmptyValue': false,
        'collectionFormat': 'csv',
        'maxItems': 10,
        'minItems': 1,
        'maxLength': 50,
        'minLength': 3,
        'uniqueItems': true,
        'externalDocs': {
          'description': 'More about this schema',
          'url': 'http://example.com/docs',
        },
        'discriminator': {'propertyName': 'userType'},
        'allOf': [
          {r'$ref': '#/definitions/BaseUser'},
        ],
        'items': {'type': 'string'},
        'maximum': 100,
        'minimum': 0,
        'exclusiveMaximum': true,
        'exclusiveMinimum': true,
        'multipleOf': 0.5,
      };

      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      if (!deepEquality.equals(json, newJson)) {
        for (final key in json.keys) {
          if (!deepEquality.equals(json[key], newJson[key])) {
            print('key: $key');
            print('old: ${json[key]}');
            print('new: ${newJson[key]}');
          }
        }
      }
      expect(deepEquality.equals(json, newJson), isTrue);
    });
    test(
      'OpenAPI 2.0: Test for xml, additionalProperties, and discriminator',
      () {
        final json = {
          'type': 'object',
          'title': 'UserWithAdditionalProps',
          'description': 'An OpenAPI 2.0 schema with extra properties',
          'properties': {
            'id': {'type': 'integer', 'format': 'int64'},
          },
          'xml': {'name': 'User', 'namespace': 'http://example.com/api'},
          'additionalProperties': {'type': 'string'},
          'discriminator': {'propertyName': 'type'},
        };

        final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
        final newJson = schema.toJson();

        if (!deepEquality.equals(json, newJson)) {
          for (final key in json.keys) {
            if (!deepEquality.equals(json[key], newJson[key])) {
              print('key: $key');
              print('old: ${json[key]}');
              print('new: ${newJson[key]}');
            }
          }
        }

        expect(deepEquality.equals(json, newJson), isTrue);
      },
    );
    test(
      'Given a basic string schema, when converted to JSON, then the roundtrip'
      ' is identical.',
      () {
        final json = {'type': 'string'};
        final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
        final newJson = schema.toJson();
        expect(deepEquality.equals(json, newJson), isTrue);
      },
    );

    test('Given a string schema with common properties, when converted, then '
        'the roundtrip is identical.', () {
      final json = {
        'type': 'string',
        'description': "The user's name",
        'pattern': r'^[a-zA-Z0-9_]+$',
        'maxLength': 32,
        'minLength': 3,
        'default': 'user',
        'enum': ['admin', 'guest', 'user'],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('Given a numerical schema with min/max, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {
        'type': 'integer',
        'format': 'int32',
        'minimum': 0,
        'maximum': 100,
        'exclusiveMinimum': false,
        'exclusiveMaximum': false,
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(
        deepEquality.equals(json, newJson),
        isTrue,
        reason:
            'The roundtrip is not identical. Expected: $json, Actual: $newJson',
      );
    });

    test('Given a schema with a single example, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {'type': 'string', 'example': 'johndoe'};
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('Given an object schema with properties, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {
        'type': 'object',
        'title': 'User',
        'required': ['id', 'name'],
        'properties': {
          'id': {'type': 'integer', 'format': 'int64'},
          'name': {'type': 'string'},
        },
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('Given an object schema with XML object, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {
        'type': 'object',
        'xml': {'name': 'pet'},
        'properties': {
          'id': {'type': 'integer', 'format': 'int64'},
          'name': {'type': 'string'},
        },
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('Given an array schema with collectionFormat, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {
        'type': 'array',
        'items': {'type': 'string'},
        'collectionFormat': 'csv',
        'minItems': 1,
        'maxItems': 5,
        'uniqueItems': true,
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test(r'Given a schema with a $ref, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {r'$ref': '#/definitions/Pet'};
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('Given a schema with an allOf combinator, when converted,'
        ' then the roundtrip is identical.', () {
      final json = {
        'allOf': [
          {r'$ref': '#/definitions/NewPet'},
          {
            'required': ['id'],
            'properties': {
              'id': {'type': 'integer', 'format': 'int64'},
            },
          },
          {
            'externalDocs': {
              'description': 'Find more info here',
              'url': 'http://example.com',
            },
          },
        ],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v20);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });
  });

  group('Schema Model - OpenAPI 3.0', () {
    test('Covering all supported schema properties', () {
      final json = {
        'type': 'object',
        'title': 'UserV30',
        'description': 'A comprehensive user schema for OpenAPI 3.0',
        'required': ['id', 'name'],
        'properties': {
          'id': {'type': 'integer', 'format': 'int64'},
          'name': {
            'type': 'string',
            'pattern': r'^[A-Za-z]+$',
            'minLength': 3,
            'maxLength': 50,
            'deprecated': true,
          },
          'status': {
            'type': 'string',
            'enum': ['active', 'inactive', 'pending'],
            'default': 'pending',
          },
          'score': {
            'type': 'number',
            'format': 'float',
            'minimum': 0.0,
            'maximum': 100.0,
            'exclusiveMinimum': false,
            'exclusiveMaximum': true,
            'multipleOf': 0.5,
          },
          'address': {
            'oneOf': [
              {r'$ref': '#/components/schemas/StreetAddress'},
              {r'$ref': '#/components/schemas/POBoxAddress'},
            ],
            // 'discriminator' is also supported here
            'discriminator': {'propertyName': 'addressType'},
          },
        },
        'xml': {
          'name': 'user',
          'namespace': 'http://example.com/api',
          'prefix': 'api',
          'wrapped': false,
        },
        'examples': [
          {'id': 123, 'name': 'JohnDoe', 'status': 'active'},
        ],
        'additionalProperties': {'type': 'string'},
        'readOnly': true,
        'writeOnly': false,
        'nullable': true,
        'maxItems': 10,
        'minItems': 1,
        'uniqueItems': true,
        'not': {'type': 'string'},
        'externalDocs': {
          'description': 'More about this schema',
          'url': 'http://example.com/docs',
        },
        'allOf': [
          {r'$ref': '#/components/schemas/BaseUser'},
        ],
      };

      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();

      if (!deepEquality.equals(json, newJson)) {
        for (final key in json.keys) {
          if (!deepEquality.equals(json[key], newJson[key])) {
            print('key: $key');
            print('old: ${json[key]}');
            print('new: ${newJson[key]}');
          }
        }
      }

      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a basic string schema', () {
      final json = {'type': 'string'};
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with all string properties', () {
      final json = {
        'type': 'string',
        'title': 'Username',
        'description': "The user's name",
        'example': 'johndoe',
        'pattern': r'^[a-zA-Z0-9_]+$',
        'maxLength': 32,
        'minLength': 3,
        'format': 'email',
        'deprecated': true,
        'nullable': true,
        'readOnly': true,
        'writeOnly': true,
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(
        deepEquality.equals(json, newJson),
        isTrue,
        reason: jsonEncode(newJson),
      );
    });

    test('roundtrip for a schema with all numerical properties', () {
      final json = {
        'type': 'number',
        'format': 'double',
        'minimum': 0.0,
        'maximum': 100.0,
        'exclusiveMinimum': true,
        'exclusiveMaximum': false,
        'multipleOf': 0.5,
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for an object schema with properties', () {
      final json = {
        'type': 'object',
        'title': 'User',
        'required': ['id', 'name'],
        'properties': {
          'id': {'type': 'integer', 'format': 'int64'},
          'name': {'type': 'string'},
        },
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for an object with additionalProperties as a schema', () {
      final json = {
        'type': 'object',
        'additionalProperties': {
          'type': 'string',
          'description': 'A key-value pair',
        },
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for an array schema with item properties', () {
      final json = {
        'type': 'array',
        'items': {'type': 'string', 'format': 'uuid'},
        'maxItems': 10,
        'minItems': 1,
        'uniqueItems': true,
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with enum values', () {
      final json = {
        'type': 'string',
        'enum': ['pending', 'shipped', 'delivered'],
        'default': 'pending',
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with a discriminator', () {
      final json = {
        'oneOf': [
          {r'$ref': '#/components/schemas/Dog'},
          {r'$ref': '#/components/schemas/Cat'},
        ],
        'discriminator': {
          'propertyName': 'petType',
          'mapping': {
            'Dog': '#/components/schemas/Dog',
            'Cat': '#/components/schemas/Cat',
          },
        },
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with allOf combinator', () {
      final json = {
        'allOf': [
          {r'$ref': '#/components/schemas/NewPet'},
          {
            'required': ['id'],
            'properties': {
              'id': {'type': 'integer', 'format': 'int64'},
            },
          },
        ],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with oneOf combinator', () {
      final json = {
        'oneOf': [
          {r'$ref': '#/components/schemas/User'},
          {r'$ref': '#/components/schemas/Admin'},
        ],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with anyOf combinator', () {
      final json = {
        'anyOf': [
          {'type': 'string'},
          {'type': 'integer'},
        ],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with not combinator', () {
      final json = {
        'not': {'type': 'string'},
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test(r'roundtrip for a schema with a $ref', () {
      final json = {r'$ref': '#/components/schemas/Pet'};
      final schema = Schema.fromJson(json, version: OpenApiVersion.v30);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });
  });

  group('Schema Model - OpenAPI 3.1', () {
    test('Covering all supported schema properties', () {
      final json = {
        r'$schema': 'https://json-schema.org/draft/2020-12/schema',
        r'$id': 'https://example.com/schemas/UserV31.json',
        'title': 'UserV31',
        'description': 'A comprehensive user schema for OpenAPI 3.1',
        r'$comment': 'This is a sample comment.',
        'type': 'object',
        'properties': {
          'id': {
            'type': ['integer', 'null'], // Nullable type array
            'format': 'int64',
            'readOnly': true,
          },
          'name': {
            'type': 'string',
            'pattern': r'^[A-Za-z]+$',
            'minLength': 3,
            'maxLength': 50,
            'deprecated': true,
            'writeOnly': true,
          },

          'role': {'type': 'string'},
          'permissions': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'tags': {
            'type': 'array',

            'items': {'type': 'string'},
            'minItems': 2,
            'maxItems': 5,
          },
        },
        'examples': [
          {
            'id': 123,
            'name': 'JohnDoe',
            'email': 'john.doe@example.com',
            'role': 'admin',
            'permissions': ['read', 'write'],
            'tags': ['developer', 42],
          },
        ],
        'exclusiveMinimum': 0.0,
        'exclusiveMaximum': 100.0,
        'multipleOf': 0.5,
        'allOf': [
          {r'$ref': '#/components/schemas/BaseUser'},
        ],
        'anyOf': [
          {'type': 'object'},
          {'type': 'string'},
        ],
        'externalDocs': {
          'description': 'More about this schema',
          'url': 'http://example.com/docs',
        },
      };

      final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
      final newJson = schema.toJson();

      if (!deepEquality.equals(json, newJson)) {
        for (final key in json.keys) {
          if (!deepEquality.equals(json[key], newJson[key])) {
            print('key: $key');
            print('old: ${json[key]}');
            print('new: ${newJson[key]}');
          }
        }
      }

      expect(deepEquality.equals(json, newJson), isTrue);
    });
    test('roundtrip for a basic schema with string and null type array', () {
      final json = {
        'type': ['string', 'null'],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with a single example', () {
      final json = {'type': 'string', 'example': 'example value'};
      final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test('roundtrip for a schema with an array of examples', () {
      final json = {
        'type': 'string',
        'examples': ['example1', 'example2'],
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });

    test(
      'roundtrip for a numerical schema with exclusive min/max as values',
      () {
        final json = {
          'type': 'number',
          'exclusiveMinimum': 0.0,
          'exclusiveMaximum': 100.0,
        };
        final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
        final newJson = schema.toJson();
        expect(deepEquality.equals(json, newJson), isTrue);
      },
    );

    test(r'roundtrip for a schema with a $ref sibling', () {
      final json = {
        r'$ref': '#/components/schemas/Pet',
        'description': 'A referenced pet schema with a sibling description.',
      };
      final schema = Schema.fromJson(json, version: OpenApiVersion.v31);
      final newJson = schema.toJson();
      expect(deepEquality.equals(json, newJson), isTrue);
    });
  });
}
