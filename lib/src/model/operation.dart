// Represents a single API operation.
import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/parameter.dart';
import 'package:openapi_spec/src/model/request_body.dart';
import 'package:openapi_spec/src/model/response.dart';
import 'package:openapi_spec/src/model/security/security_requirement.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// Describes a single API operation on a path.
///
/// This class encapsulates all metadata for an API endpoint,
/// including parameters, request bodies, and responses.
@immutable
class Operation {
  /// Creates an [Operation] object.
  const Operation({
    required this.version,
    this.tags = const [],
    this.summary,
    this.description,
    this.operationId,
    this.parameters = const [],
    this.requestBody,
    this.responses = const {},
    this.security = const [],
    this.consumes,
    this.produces,
    this.deprecated = false,
  });

  /// Creates an [Operation] from a JSON object.
  factory Operation.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    return Operation(
      version: version,
      tags: (json['tags'] as List? ?? []).cast<String>(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      operationId: json['operationId'] as String?,
      parameters:
          (json['parameters'] as List? ?? [])
              .map(
                (e) => Parameter.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      requestBody:
          json['requestBody'] != null
              ? RequestBody.fromJson(
                json['requestBody'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      responses: (json['responses'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Response.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      security:
          (json['security'] as List? ?? [])
              .map(
                (e) => SecurityRequirement.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      consumes: (json['consumes'] as List?)?.cast<String>(),
      produces: (json['produces'] as List?)?.cast<String>(),
      deprecated: json['deprecated'] as bool? ?? false,
    );
  }

  /// The OpenAPI version.
  final OpenApiVersion version;

  /// A list of tags for API documentation.
  final List<String> tags;

  /// A brief summary of the operation.
  final String? summary;

  /// A detailed description of the operation.
  final String? description;

  /// A unique string used to identify the operation.
  final String? operationId;

  /// A list of parameters for the operation.
  final List<Parameter> parameters;

  /// The request body of the operation.
  final RequestBody? requestBody;

  /// The possible responses for the operation.
  final Map<String, Response> responses;

  /// A declaration of which security schemes are required for this operation.
  final List<SecurityRequirement> security;

  /// A list of MIME types the operation can consume (OpenAPI 2.0).
  final List<String>? consumes;

  /// A list of MIME types the operation can produce (OpenAPI 2.0).
  final List<String>? produces;

  /// Specifies whether the operation is deprecated.
  final bool deprecated;

  /// Converts this [Operation] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (tags.isNotEmpty) 'tags': tags,
      if (summary != null) 'summary': summary,
      if (description != null) 'description': description,
      if (operationId != null) 'operationId': operationId,
      if (parameters.isNotEmpty || version == OpenApiVersion.v20)
        'parameters': parameters.map((e) => e.toJson()).toList(),
      if (requestBody != null) 'requestBody': requestBody!.toJson(),
      if (responses.isNotEmpty)
        'responses': responses.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (security.isNotEmpty)
        'security': security.map((e) => e.toJson()).toList(),
      if (consumes != null && consumes!.isNotEmpty) 'consumes': consumes,
      if (produces != null && produces!.isNotEmpty) 'produces': produces,
      if (deprecated) 'deprecated': deprecated,
    };
  }
}
