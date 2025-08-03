import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/base_spec.dart';

import 'package:openapi_spec/src/model/xml.dart';
import 'package:openapi_spec/src/util/helpers.dart';

/// The **Schema** Object allows the definition of input and output data types.
///
/// It describes the data type, format, constraints, and structure of
/// properties, request bodies, and other parts of the OpenAPI specification.
@immutable
class Schema {
  /// Creates a [Schema] object.
  const Schema({
    this.ref,
    this.type,
    this.format,
    this.title,
    this.description,
    this.required,
    this.properties,
    this.items,
    this.example,
    this.enumValues,
    this.defaultValue,
    this.xml,
    this.additionalProperties,
    this.readOnly,
    this.writeOnly,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.$id,
    this.$schema,
    this.swaggerExtension,
    this.examples,
    this.$vocabulary,
    this.$achor,
    this.maximum,
    this.minimum,
    this.$default,
    this.externalDocs,
    this.discriminator,
    this.allOf,
    this.oneOf,
    this.anyOf,
  });

  /// Creates a [Schema] from a JSON object.
  ///
  factory Schema.fromJson(Map<String, dynamic> json) {
    return Schema(
      type: json['type'] as String?,
      ref: json[r'$ref'] as String?,
      format: json['format'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      required: (json['required'] as List? ?? []).cast<String>(),
      properties: (json['properties'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(value as Map<String, dynamic>),
        ),
      ),
      example: json['example'],
      items:
          json['items'] != null
              ? Schema.fromJson(json['items'] as Map<String, dynamic>)
              : null,
      enumValues: (json['enum'] as List?)?.map((e) => e).toList(),
      defaultValue: json['default'],
      xml:
          json['xml'] != null
              ? Xml.fromJson(json['xml'] as Map<String, dynamic>)
              : null,
      additionalProperties:
          json['additionalProperties'] != null
              ? Schema.fromJson(
                json['additionalProperties'] as Map<String, dynamic>,
              )
              : null,
      readOnly: json['readOnly'] as bool?,
      writeOnly: json['writeOnly'] as bool?,
      exclusiveMaximum: numOrNull(json['exclusiveMaximum']),
      exclusiveMinimum: numOrNull(json['exclusiveMinimum']),
      $id: json[r'$id'] as String?,
      $schema: json[r'$schema'] as String?,
      swaggerExtension: json['swagger-extension'] as bool?,
      examples: (json['examples'] as List?)?.map((e) => e).toList(),
      $vocabulary: json[r'$vocabulary'] as String?,
      $achor: json[r'$anchor'] as String?,
      maximum: numOrNull(json['maximum']),
      minimum: numOrNull(json['minimum']),
      $default: json['default'],
      externalDocs:
          json['externalDocs'] != null
              ? ExternalDocs.fromJson(
                json['externalDocs'] as Map<String, dynamic>,
              )
              : null,
      discriminator:
          json['discriminator'] != null
              ? Discriminator.fromJson(
                json['discriminator'] as Map<String, dynamic>,
              )
              : null,
      oneOf:
          (json['oneOf'] as List?)
              ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
              .toList(),
      anyOf:
          (json['anyOf'] as List?)
              ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
              .toList(),
      allOf:
          (json['allOf'] as List?)
              ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  //----------------------------------------------------------------------------
  // Core Schema Properties (OpenAPI 3.0+)
  //----------------------------------------------------------------------------

  /// A reference to another Schema Object, typically in the `components` section.
  final String? ref;

  /// The data type of the schema (e.g., 'string', 'number', 'array').
  final String? type;

  /// The format of the data type (e.g., 'int32', 'date-time', 'email').
  final String? format;

  /// A title for the schema.
  final String? title;

  /// A brief description of the schema.
  final String? description;

  /// A list of properties that must be present in the object.
  final List<String>? required;

  /// A map of property names to their respective [Schema] objects.
  final Map<String, Schema>? properties;

  /// For array types, this describes the type of items in the array.
  final Schema? items;

  /// An example value for the schema.
  final dynamic example;

  /// A list of possible values for an enum.
  final List<dynamic>? enumValues;

  /// The default value for the schema.
  final dynamic defaultValue;

  /// Provides metadata for XML serialization.
  final Xml? xml;

  /// Specifies the schema for any additional properties in the object.
  final Schema? additionalProperties;

  /// The minimum value for a number.
  final num? minimum;

  /// The maximum value for a number.
  final num? maximum;

  //----------------------------------------------------------------------------
  // v3.1 Specific Properties
  //----------------------------------------------------------------------------

  /// v3.1 property indicating if the property is read-only.
  final bool? readOnly;

  /// v3.1 property indicating if the property is write-only.
  final bool? writeOnly;

  /// The exclusive maximum value for a number.
  final num? exclusiveMaximum;

  /// The exclusive minimum value for a number.
  final num? exclusiveMinimum;

  /// A unique identifier for the schema.
  final String? $id;

  /// The schema dialect used.
  final String? $schema;

  /// A vendor-specific swagger extension.
  final bool? swaggerExtension;

  /// A list of example values for the schema.
  final List<dynamic>? examples;

  /// A vocabulary identifier.
  final String? $vocabulary;

  /// An anchor for this schema.
  final String? $achor;

  /// The default value for the schema.
  final dynamic $default;

  //----------------------------------------------------------------------------
  // Polymorphism and Composition Properties
  //----------------------------------------------------------------------------

  /// A URL to external documentation for this schema.
  final ExternalDocs? externalDocs;

  /// A **Discriminator** object for handling polymorphism.
  final Discriminator? discriminator;

  /// An array of schemas where the data must be valid against exactly one of the schemas.
  final List<Schema>? oneOf;

  /// An array of schemas where the data must be valid against one or more of the schemas.
  final List<Schema>? anyOf;

  /// An array of schemas where the data must be valid against all of the schemas.
  final List<Schema>? allOf;

  /// Converts this [Schema] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (ref != null) r'$ref': ref,
      if (type != null) 'type': type,
      if (format != null) 'format': format,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (required != null && required!.isNotEmpty) 'required': required,
      if (properties != null && properties!.isNotEmpty)
        'properties': properties!.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (items != null) 'items': items!.toJson(),
      if (enumValues != null && enumValues!.isNotEmpty) 'enum': enumValues,
      if (defaultValue != null) 'default': defaultValue,
      if (xml != null) 'xml': xml!.toJson(),
      if (example != null) 'example': example,
      if (additionalProperties != null)
        'additionalProperties': additionalProperties!.toJson(),
      if (readOnly != null) 'readOnly': readOnly,
      if (writeOnly != null) 'writeOnly': writeOnly,
      if (exclusiveMaximum != null) 'exclusiveMaximum': exclusiveMaximum,
      if (exclusiveMinimum != null) 'exclusiveMinimum': exclusiveMinimum,
      if ($id != null) r'$id': $id,
      if ($schema != null) r'$schema': $schema,
      if (swaggerExtension != null) 'swagger-extension': swaggerExtension,
      if (examples != null && examples!.isNotEmpty) 'examples': examples,
      if ($vocabulary != null) r'$vocabulary': $vocabulary,
      if ($achor != null) r'$anchor': $achor,
      if (maximum != null) 'maximum': maximum,
      if (minimum != null) 'minimum': minimum,
      if ($default != null) 'default': $default,
      if (externalDocs != null) 'externalDocs': externalDocs!.toJson(),
      if (discriminator != null) 'discriminator': discriminator!.toJson(),
      if (oneOf != null) 'oneOf': oneOf!.map((s) => s.toJson()).toList(),
      if (anyOf != null) 'anyOf': anyOf!.map((s) => s.toJson()).toList(),
      if (allOf != null) 'allOf': allOf!.map((s) => s.toJson()).toList(),
    };
  }
}

/// The **Discriminator** Object gives a hint about the expected schema of the
/// document when request bodies or response payloads may be one of a number of
/// different schemas.
@immutable
class Discriminator {
  /// Creates a [Discriminator] object.
  const Discriminator({required this.propertyName, this.mapping});

  /// Creates a [Discriminator] from a JSON object.
  factory Discriminator.fromJson(Map<String, dynamic> json) {
    return Discriminator(
      propertyName: json['propertyName'] as String,
      mapping: (json['mapping'] as Map?)?.map(
        (key, value) => MapEntry(key as String, value as String),
      ),
    );
  }

  /// The name of the property that is used to differentiate between schemas.
  final String propertyName;

  /// A map that associates a property value with a schema name.
  final Map<String, String>? mapping;

  /// Converts this [Discriminator] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'propertyName': propertyName,
      if (mapping != null) 'mapping': mapping,
    };
  }
}
