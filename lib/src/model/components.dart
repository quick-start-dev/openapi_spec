import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/parameter.dart';
import 'package:openapi_spec/src/model/request_body.dart';
import 'package:openapi_spec/src/model/response.dart';
import 'package:openapi_spec/src/model/schema.dart';
import 'package:openapi_spec/src/model/security/security_scheme.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// An object to hold reusable objects for the specification.
///
/// This class represents the `components` section of an OpenAPI document,
/// where reusable schemas, responses, parameters, and other objects are defined.
@immutable
class Components {
  /// Creates a [Components] object.
  const Components({
    required this.version,
    this.schemas = const {},
    this.responses = const {},
    this.parameters = const {},
    this.requestBodies = const {},
    this.securitySchemes = const {},
  });

  /// Creates a [Components] object from a JSON map.
  factory Components.fromJson(
    Map<String, dynamic> json,
    OpenApiVersion version,
  ) {
    return Components(
      version: version,
      schemas: (json['schemas'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(value as Map<String, dynamic>),
        ),
      ),
      responses: (json['responses'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Response.fromJson(value as Map<String, dynamic>),
        ),
      ),
      parameters: (json['parameters'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Parameter.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      requestBodies: (json['requestBodies'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          RequestBody.fromJson(value as Map<String, dynamic>),
        ),
      ),
      securitySchemes: (json['securitySchemes'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          SecurityScheme.fromJson(value as Map<String, dynamic>),
        ),
      ),
    );
  }

  /// The schemas available for reuse.
  final Map<String, Schema> schemas;

  /// The responses available for reuse.
  final Map<String, Response> responses;

  /// The parameters available for reuse.
  final Map<String, Parameter> parameters;

  /// The request bodies available for reuse.
  final Map<String, RequestBody> requestBodies;

  /// The security schemes available for reuse.
  final Map<String, SecurityScheme> securitySchemes;

  /// The OpenAPI version.
  final OpenApiVersion version;

  /// Converts this [Components] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (schemas.isNotEmpty)
        'schemas': schemas.map((key, value) => MapEntry(key, value.toJson())),
      if (responses.isNotEmpty)
        'responses': responses.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (parameters.isNotEmpty)
        'parameters': parameters.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (requestBodies.isNotEmpty)
        'requestBodies': requestBodies.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (securitySchemes.isNotEmpty)
        'securitySchemes': securitySchemes.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
    };
  }
}
