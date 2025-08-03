import 'package:meta/meta.dart';

import 'package:openapi_spec/src/model/schema.dart';
import 'package:openapi_spec/src/util/enums.dart';
import 'package:openapi_spec/src/util/helpers.dart';

/// Describes a single operation parameter.
///
/// A unique parameter is defined by a combination of a [name] and [location].
@immutable
class Parameter {
  /// Creates a [Parameter] object.
  const Parameter({
    required this.name,
    required this.version,
    this.location,
    this.description,
    this.required = false,
    this.deprecated = false,
    this.schema,
    this.type,
    this.format,
    this.collectionFormat,
    this.items,
    this.maximum,
    this.minimum,
    this.explode,
  });

  /// Creates a [Parameter] from a JSON object.
  factory Parameter.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    return Parameter(
      version: version,
      name: json['name'] as String,
      location:
          json['in'] != null
              ? ParameterLocation.fromString(json['in'] as String)
              : null,
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      deprecated: json['deprecated'] as bool? ?? false,
      schema:
          json['schema'] != null
              ? Schema.fromJson(json['schema'] as Map<String, dynamic>)
              : null,
      type: json['type'] as String?,
      format: json['format'] as String?,
      collectionFormat: json['collectionFormat'] as String?,
      items:
          json['items'] != null
              ? Schema.fromJson(json['items'] as Map<String, dynamic>)
              : null,
      maximum: numOrNull(json['maximum']),
      minimum: numOrNull(json['minimum']),
      explode: json['explode'] as bool?,
    );
  }

  /// The OpenAPI version.
  final OpenApiVersion version;

  /// The name of the parameter.
  final String name;

  /// The location of the parameter, typically `query`, `header`, `path`,
  /// or `cookie`.
  final ParameterLocation? location;

  /// A brief description of the parameter.
  final String? description;

  /// Specifies whether the parameter is required.
  final bool required;

  /// Specifies whether the parameter is deprecated.
  final bool deprecated;

  /// Specifies the schema of the parameter's value (OpenAPI 3.0).
  final Schema? schema;

  /// The data type of the parameter (OpenAPI 2.0).
  final String? type;

  /// The format of the parameter's value (OpenAPI 2.0).
  final String? format;

  /// The collection format for array parameters (OpenAPI 2.0).
  final String? collectionFormat;

  /// For array types, describes the type of items in the array (OpenAPI 2.0).
  final Schema? items;

  /// The maximum allowed value for a numeric parameter.
  final num? maximum;

  /// The minimum allowed value for a numeric parameter.
  final num? minimum;

  /// Specifies whether array or object parameters should be exploded.
  final bool? explode;

  /// Converts this [Parameter] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      if (location != null) 'in': location!.name,
      if (description != null) 'description': description,
      'required': required,
      if (deprecated) 'deprecated': deprecated,
      if (schema != null) 'schema': schema!.toJson(),
      if (type != null) 'type': type,
      if (format != null) 'format': format,
      if (collectionFormat != null) 'collectionFormat': collectionFormat,
      if (items != null) 'items': items!.toJson(),
      if (maximum != null) 'maximum': maximum,
      if (minimum != null) 'minimum': minimum,
      if (explode != null) 'explode': explode,
    };
  }
}
