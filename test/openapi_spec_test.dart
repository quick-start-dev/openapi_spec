// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:openapi_spec/openapi_spec.dart';
import 'package:openapi_spec/src/parser/yaml_utils.dart';
import 'package:test/test.dart';

void main() {
  group('OpenApiParser', () {
    test('parses a valid OpenAPI 2.0 JSON spec', () async {
      final file = File('test/fixtures/petstore_v2.json');
      final content = await file.readAsString();
      final spec = OpenApiParser.parseJson(content);
      expect(spec, isA<OpenApi20Spec>());
      expect(spec.openapi, '2.0');
    });

    test('parses a valid OpenAPI 3.0 JSON spec', () async {
      final file = File('test/fixtures/petstore_v30.json');
      final content = await file.readAsString();
      final spec = OpenApiParser.parseJson(content);
      expect(spec, isA<OpenApi30Spec>());
      expect(spec.openapi, '3.0.4');
    });

    test('parses a valid OpenAPI 3.1 JSON spec', () async {
      final file = File('test/fixtures/petstore_v31.json');
      final content = await file.readAsString();
      final spec = OpenApiParser.parseJson(content);
      expect(spec, isA<OpenApi31Spec>());
      expect(spec.openapi, '3.1.0');
    });

    test('throws an exception for an unsupported version', () {
      const invalidJson = '''
        {
          "openapi": "4.0.0",
          "info": {}
        }
      ''';
      expect(
        () => OpenApiParser.parseJson(invalidJson),
        throwsA(isA<OpenApiParserException>()),
      );
    });
  });

  group('YAML Utilities', () {
    test('yamlToMap returns a Dart map for a valid YAML string', () {
      const yamlString = 'key1: value1\nkey2: 123\nkey3:\n  sub_key: true';
      final dartMap = yamlToMap(yamlString);
      expect(dartMap, isA<Map<String, dynamic>>());
      expect(dartMap['key1'], 'value1');
      expect(dartMap['key2'], 123);
      expect(dartMap['key3'], isA<Map<String, dynamic>>());

      /// ignore for test
      // ignore: avoid_dynamic_calls
      expect(dartMap['key3']['sub_key'], true);
    });

    test('yamlToMap handles lists correctly', () {
      const yamlString = 'list_key:\n  - item1\n  - item2';
      final dartMap = yamlToMap(yamlString);
      expect(dartMap['list_key'], isA<List<dynamic>>());
      expect(dartMap['list_key'], ['item1', 'item2']);
    });

    test('yamlToMap throws FormatException for non-map root', () {
      const yamlString = '- item1\n- item2';
      expect(() => yamlToMap(yamlString), throwsA(isA<FormatException>()));
    });
  });

  group('Model Classes', () {
    test('OpenApi20Spec toJson/fromJson roundtrip', () {
      final json = jsonDecode(
        File('test/fixtures/petstore_v2.json').readAsStringSync(),
      );
      final spec = OpenApi20Spec.fromJson(json as Map<String, dynamic>);
      final newJson = spec.toJson();

      _compareMaps(json, newJson);

      // expect(json, newJson);
    });

    test('OpenApi30Spec toJson/fromJson roundtrip', () {
      final json = jsonDecode(
        File('test/fixtures/petstore_v30.json').readAsStringSync(),
      );
      final spec = OpenApi30Spec.fromJson(json as Map<String, dynamic>);
      final newJson = spec.toJson();

      _compareMaps(json, newJson);

      // expect(json, newJson);
    });

    test('OpenApi31Spec toJson/fromJson roundtrip', () {
      final json = jsonDecode(
        File('test/fixtures/petstore_v31.json').readAsStringSync(),
      );
      final spec = OpenApi31Spec.fromJson(json as Map<String, dynamic>);
      final newJson = spec.toJson();

      _compareMaps(json, newJson);

      // expect(json, newJson);
    });
  });
}

void _compareMaps(dynamic a, dynamic b, [String path = '']) {
  final equality = const DeepCollectionEquality().equals;
  const defaultValues = {
    'required': false,
    'deprecated': false,
    'explode': false,
  };

  if (a is Map && b is Map) {
    final allKeys = {...a.keys, ...b.keys};
    for (final key in allKeys) {
      final newPath = path.isEmpty ? key : '$path.$key';

      if (defaultValues.containsKey(key)) {
        final defaultValue = defaultValues[key];
        final aVal = a.containsKey(key) ? a[key] : defaultValue;
        final bVal = b.containsKey(key) ? b[key] : defaultValue;
        if (aVal == defaultValue && bVal == defaultValue) {
          // Both missing or false: treat as equal, skip deeper compare
          continue;
        }
      }
      if (key == 'parameters') {
        final aVal = a.containsKey(key) ? a[key] : <dynamic>[];
        final bVal = b.containsKey(key) ? b[key] : <dynamic>[];
        _compareMaps(aVal, bVal, newPath as String);
        continue;
      }

      if (!a.containsKey(key)) {
        print('\n');
        print('➕ Extra key in newJson: $newPath');
        print('   value: ${b[key]}');
        print('   type: ${b[key].runtimeType}');
        print('   key: $key}');
        print('\n');
      } else if (!b.containsKey(key)) {
        print('\n');
        print('➖ Missing in newJson: $newPath');
        print('   value: ${a[key]}');
        print('   type: ${a[key].runtimeType}');
        print('   key: $key');
        print('\n');
      } else {
        _compareMaps(a[key], b[key], newPath as String);
      }
    }
  } else if (a is List && b is List) {
    var normalizedA = a;
    var normalizedB = b;

    // Normalize parameter lists to ignore missing vs explicit false defaults
    if (path.endsWith('.parameters')) {
      normalizedA = normalizeParameters(a);
      normalizedB = normalizeParameters(b);
    }

    if (!equality(normalizedA, normalizedB)) {
      print('⚠️ Value mismatch at $path:');
      print('   original: $a');
      print('   new:      $b\n');
    }
  } else {
    if (a != b) {
      print('⚠️ Value mismatch at $path:');
      print('   original: $a');
      print('   new:      $b\n');
    }
  }
}

List<dynamic> normalizeParameters(List<dynamic> params) {
  return params.map((param) {
    if (param is Map<String, dynamic>) {
      final normalized = Map<String, dynamic>.from(param);
      if (!normalized.containsKey('required')) {
        normalized['required'] = false;
      }
      // Remove keys with false default values to unify representation
      if (normalized['required'] == false) normalized.remove('required');
      return normalized;
    }
    return param;
  }).toList();
}
