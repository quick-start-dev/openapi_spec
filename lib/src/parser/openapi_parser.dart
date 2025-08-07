import 'dart:convert';

import 'package:openapi_spec/src/model/base_spec.dart';
import 'package:openapi_spec/src/model/openapi20_spec.dart';
import 'package:openapi_spec/src/model/openapi30_spec.dart';
import 'package:openapi_spec/src/model/openapi31_spec.dart';
import 'package:openapi_spec/src/parser/exceptions.dart';
import 'package:openapi_spec/src/parser/yaml_utils.dart';
import 'package:yaml_writer/yaml_writer.dart';

/// Utility class to parse OpenAPI specs from strings.
class OpenApiParser {
  /// Parses a JSON OpenAPI spec from a string.
  /// Throws [FormatException] if the content is not valid JSON.
  static BaseOpenApiSpec parseJson(String content) {
    final document = json.decode(content) as Map<String, dynamic>;
    return _parseDocument(document);
  }

  /// Serializes a [BaseOpenApiSpec] object to a formatted JSON string.
  static String toJsonString(BaseOpenApiSpec spec) {
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(spec);
  }

  /// Parses a YAML OpenAPI spec from a string.
  /// Throws a parsing error if the content is not valid YAML.
  static BaseOpenApiSpec parseYaml(String content) {
    final document = yamlToMap(content);
    return _parseDocument(document);
  }

  /// Serializes a [BaseOpenApiSpec] object to a YAML string.
  static String toYamlString(BaseOpenApiSpec spec) {
    final yamlWriter = YamlWriter();
    return yamlWriter.write(spec.toJson());
  }

  /// Private helper method to handle version-specific parsing.
  static BaseOpenApiSpec _parseDocument(Map<String, dynamic> document) {
    final openapiVersion =
        (document['openapi'] as String?) ??
        (document['swagger'] as String?) ??
        '';

    if (openapiVersion.startsWith('2.0')) {
      return OpenApi20Spec.fromJson(document);
    } else if (openapiVersion.startsWith('3.0')) {
      return OpenApi30Spec.fromJson(document);
    } else if (openapiVersion.startsWith('3.1')) {
      return OpenApi31Spec.fromJson(document);
    } else {
      throw OpenApiParserException(
        'Unsupported OpenAPI version: $openapiVersion',
      );
    }
  }
}
