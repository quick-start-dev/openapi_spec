// The main class for an OpenAPI 2.0 (Swagger) specification.
import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/base_spec.dart';
import 'package:openapi_spec/src/model/path.dart';
import 'package:openapi_spec/src/model/schema.dart';
import 'package:openapi_spec/src/model/security/security_requirement.dart';
import 'package:openapi_spec/src/model/security/security_scheme.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// The root document object of the OpenAPI 2.0 (Swagger) specification.
///
/// This class represents the top-level structure of an OpenAPI 2.0 document,
/// including metadata, definitions, paths, and security schemes.
@immutable
class OpenApi20Spec extends BaseOpenApiSpec {
  /// Creates an [OpenApi20Spec] with the given parameters.
  const OpenApi20Spec({
    required this.swagger,
    super.info,
    this.host,
    this.basePath,
    this.schemes,
    this.consumes,
    this.produces,
    super.paths = const {},
    this.definitions = const {},
    this.securityDefinitions = const {},
    this.security = const [],
    super.externalDocs,
    super.tags = const [],
    super.extensions,
  }) : super(openapi: swagger);

  /// Creates an [OpenApi20Spec] from a JSON-like map.
  factory OpenApi20Spec.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });
    return OpenApi20Spec(
      swagger: json['swagger'] as String,
      info:
          json['info'] == null
              ? null
              : Info.fromJson(json['info'] as Map<String, dynamic>),
      host: json['host'] as String?,
      basePath: json['basePath'] as String,
      schemes: (json['schemes'] as List?)?.cast<String>(),
      consumes: (json['consumes'] as List?)?.cast<String>(),
      produces: (json['produces'] as List?)?.cast<String>(),
      paths: (json['paths'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Path.fromJson(
            value as Map<String, dynamic>,
            version: OpenApiVersion.v20,
          ),
        ),
      ),
      definitions: (json['definitions'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(
            value as Map<String, dynamic>,
            version: OpenApiVersion.v20,
          ),
        ),
      ),
      securityDefinitions: (json['securityDefinitions'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          SecurityScheme.fromJson(value as Map<String, dynamic>),
        ),
      ),
      security:
          (json['security'] as List? ?? [])
              .map(
                (e) => SecurityRequirement.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      tags:
          (json['tags'] as List? ?? [])
              .map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList(),
      externalDocs:
          json['externalDocs'] == null
              ? null
              : ExternalDocs.fromJson(
                json['externalDocs'] as Map<String, dynamic>,
              ),
      extensions: extensions,
    );
  }

  /// The version of the Swagger specification.
  final String swagger;

  /// The host serving the API.
  final String? host;

  /// The base path for all API paths.
  final String? basePath;

  /// The transfer protocols to be used.
  final List<String>? schemes;

  /// A list of MIME types the API can consume.
  final List<String>? consumes;

  /// A list of MIME types the API can produce.
  final List<String>? produces;

  /// An object to hold reusable schema definitions.
  final Map<String, Schema> definitions;

  /// A declaration of security schemes used in the API.
  final Map<String, SecurityScheme> securityDefinitions;

  /// A declaration of which security schemes are required for the entire API.
  final List<SecurityRequirement> security;

  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      if (host != null) 'host': host,
      if (basePath != null) 'basePath': basePath,
      if (schemes != null) 'schemes': schemes,
      if (consumes != null) 'consumes': consumes,
      if (produces != null) 'produces': produces,
      if (definitions.isNotEmpty)
        'definitions': definitions.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (securityDefinitions.isNotEmpty)
        'securityDefinitions': securityDefinitions.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (security.isNotEmpty)
        'security': security.map((e) => e.toJson()).toList(),
    };
  }
}
