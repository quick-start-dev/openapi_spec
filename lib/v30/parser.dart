import 'dart:convert';

import 'package:openapi_spec/src/util/yaml_utils.dart' show yamlToMap;
import 'package:openapi_spec/v30/openapi_spec.dart';

/// Utility class to parse OpenAPI specs
class OpenAPIParser {
  /// Parses a JSON OpenAPI spec from a string.
  /// Throws [FormatException] if the content is not valid JSON.
  static OpenAPI parseJson(String content) {
    return OpenAPI.fromJson(json.decode(content) as Map<String, dynamic>);
  }

  /// Parses a YAML OpenAPI spec from a string.
  /// Throws a parsing error if the content is not valid YAML.
  static OpenAPI parseYaml(String content) {
    return OpenAPI.fromJson(yamlToMap(content));
  }

  /// Serializes a [OpenAPI] object to a formatted JSON string.
  static String toJsonString(OpenAPI spec) {
    return json.encode(spec.toJson());
  }
}
