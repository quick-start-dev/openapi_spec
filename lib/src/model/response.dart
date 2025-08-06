import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/media_type.dart';
import 'package:openapi_spec/src/model/schema.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// Describes a single API response.
///
/// This class represents a response definition in an OpenAPI document,
/// including its description, content, and headers.
@immutable
class Response {
  /// Creates a [Response] object.
  const Response({
    required this.description,
    this.content = const {},
    this.schema,
    this.$ref,
    this.headers = const {},
  });

  /// Creates a [Response] from a JSON object.
  factory Response.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    if (json[r'$ref'] != null) {
      return Response($ref: json[r'$ref'] as String, description: '');
    }
    return Response(
      description: json['description'] as String,
      schema:
          json['schema'] != null
              ? Schema.fromJson(
                json['schema'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      content: (json['content'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          MediaType.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      headers: (json['headers'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Header.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
    );
  }

  /// A brief description of the response.
  final String description;

  /// The response schema for OpenAPI 2.0.
  final Schema? schema;

  /// The content of the response for OpenAPI 3.0.
  final Map<String, MediaType> content;

  /// A map of headers for this response.
  final Map<String, Header> headers;

  /// The reference to the response schema.
  final String? $ref;

  /// Converts this [Response] object to a JSON map.
  Map<String, dynamic> toJson() {
    if ($ref != null) {
      return {r'$ref': $ref};
    }
    return {
      'description': description,
      if (content.isNotEmpty)
        'content': content.map((key, value) => MapEntry(key, value.toJson())),
      if (schema != null) 'schema': schema!.toJson(),
      if (headers.isNotEmpty)
        'headers': headers.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}

/// Represents a response header definition.
///
/// This class defines a single header, which can include a description
/// and a schema for its value.
@immutable
class Header {
  /// Creates a [Header] object.
  const Header({
    required this.description,
    this.type,
    this.format,
    this.schema,
    this.$ref,
  });

  /// Creates a [Header] from a JSON object.
  factory Header.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    if (json[r'$ref'] != null) {
      return Header($ref: json[r'$ref'] as String, description: '');
    }
    return Header(
      schema:
          json['schema'] != null
              ? Schema.fromJson(
                json['schema'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      description: json['description'] as String,
      type: json['type'] as String?,
      format: json['format'] as String?,
    );
  }

  /// A brief description of the header.
  final String description;

  /// The data type of the header value (for OpenAPI 2.0).
  final String? type;

  /// The format of the header value (for OpenAPI 2.0).
  final String? format;

  /// The schema for the header value (for OpenAPI 3.0).
  final Schema? schema;

  /// The reference to the header value
  final String? $ref;

  /// Converts this [Header] object to a JSON map.
  Map<String, dynamic> toJson() {
    if ($ref != null) {
      return {r'$ref': $ref};
    }
    return {
      'description': description,
      if (type != null) 'type': type,
      if (format != null) 'format': format,
      if (schema != null) 'schema': schema!.toJson(),
    };
  }
}
