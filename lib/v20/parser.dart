import 'dart:convert';

import 'package:openapi_spec/src/parser/yaml_utils.dart' show yamlToMap;
import 'package:openapi_spec/v20/openapi_spec.dart';

/// Utility class to parse OpenAPI specs
class OpenAPiParser {
  /// Parses a JSON OpenAPI spec from a string.
  /// Throws [FormatException] if the content is not valid JSON.
  static OpenApiSpec parseJson(String content) {
    return OpenApiSpec.fromJson(json.decode(content) as Map<String, dynamic>);
  }

  /// Parses a YAML OpenAPI spec from a string.
  /// Throws a parsing error if the content is not valid YAML.
  static OpenApiSpec parseYaml(String content) {
    return OpenApiSpec.fromJson(yamlToMap(content));
  }

  /// Serializes a [OpenApiSpec] object to a formatted JSON string.
  static String toJsonString(OpenApiSpec spec) {
    return json.encode(spec.toJson());
  }
}
