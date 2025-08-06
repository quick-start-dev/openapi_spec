import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/base_spec.dart';
import 'package:openapi_spec/src/model/xml.dart';
import 'package:openapi_spec/src/util/enums.dart' show OpenApiVersion;
import 'package:openapi_spec/src/util/helpers.dart';

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

/// The **Schema** Object allows the definition of input and output data types.
///
/// It describes the data type, format, constraints, and structure of
/// properties, request bodies, and other parts of the OpenAPI specification.
@immutable
abstract class Schema {
  /// Creates a [Schema] object.
  const Schema({
    this.ref,
    this.type,
    this.format,
    this.title,
    this.description,
    this.$required,
    this.properties,
    this.items,
    this.example,
    this.enumValues,
    this.xml,
    this.additionalProperties,
    this.maximum,
    this.minimum,
    this.externalDocs,
    this.discriminator,
    this.allOf,
    this.oneOf,
    this.anyOf,
    this.allowEmptyValue,
    this.collectionFormat,
    this.maxItems,
    this.minItems,
    this.maxLength,
    this.minLength,
    this.pattern,
    this.uniqueItems,
    this.multipleOf,
    this.$deprecated,
  });

  /// Creates a [Schema] from a JSON object.
  ///
  factory Schema.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    switch (version) {
      case OpenApiVersion.v20:
        return SchemaV20.fromJson(json, version: version);
      case OpenApiVersion.v30:
        return SchemaV30.fromJson(json, version: version);
      case OpenApiVersion.v31:
        return SchemaV31.fromJson(json, version: version);
    }
  }

  /// A reference to another Schema Object, typically in the `components`
  /// section.
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
  final List<String>? $required;

  /// A map of property names to their respective [Schema] objects.
  final Map<String, Schema>? properties;

  /// For array types, this describes the type of items in the array.
  final Schema? items;

  /// An example value for the schema.
  final dynamic example;

  /// A list of possible values for an enum.
  final List<dynamic>? enumValues;

  /// Provides metadata for XML serialization.
  final Xml? xml;

  /// Specifies the schema for any additional properties in the object.
  final Schema? additionalProperties;

  /// The minimum value for a number.
  final num? minimum;

  /// The maximum value for a number.
  final num? maximum;

  /// Sets the ability to pass empty-valued parameters.
  /// This is valid only for either query or formData parameters and allows you
  /// to send a parameter with a name only or an empty value.
  /// Default value is false.
  final bool? allowEmptyValue;

  /// Determines the format of the array if type array is used.
  /// Possible values are:
  /// csv - comma separated values foo,bar.
  /// ssv - space separated values foo bar.
  /// tsv - tab separated values foo\tbar.
  /// pipes - pipe separated values foo|bar.
  /// multi - corresponds to multiple parameter instances instead of multiple
  /// values for a single instance foo=bar&foo=baz.
  /// This is valid only for parameters in "query" or "formData".
  /// Default value is csv.
  final String? collectionFormat;

  /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.1.
  final int? maxLength;

  /// integer See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.2.
  final int? minLength;

  /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.2.
  final int? maxItems;

  /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
  final int? minItems;

  /// string  See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.3.
  final String? pattern;

  /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
  final num? multipleOf;

  /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
  final bool? uniqueItems;

  /// Declares this schema as deprecated.
  final bool? $deprecated;

  //----------------------------------------------------------------------------
  // Polymorphism and Composition Properties
  //----------------------------------------------------------------------------

  /// A URL to external documentation for this schema.
  final ExternalDocs? externalDocs;

  /// A **Discriminator** object for handling polymorphism.
  final Discriminator? discriminator;

  /// An array of schemas where the data must be valid against exactly
  /// one of the schemas.
  final List<Schema>? oneOf;

  /// An array of schemas where the data must be valid against one or more of
  /// the schemas.
  final List<Schema>? anyOf;

  /// An array of schemas where the data must be valid against all of
  /// the schemas.
  final List<Schema>? allOf;

  /// Converts this [Schema] object to a JSON map.
  Map<String, dynamic> toJson();
}

/// Represents an OpenAPI 2.0 Schema Object.
@immutable
class SchemaV20 extends Schema {
  /// Creates a [SchemaV20] object.
  const SchemaV20({
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    super.ref,
    super.type,
    super.format,
    super.title,
    super.description,
    super.$required,
    super.properties,
    super.items,
    super.example,
    super.enumValues,
    this.$default,
    super.xml,
    super.additionalProperties,
    super.maximum,
    super.minimum,
    super.allowEmptyValue,
    super.collectionFormat,
    super.maxItems,
    super.minItems,
    super.maxLength,
    super.minLength,
    super.pattern,
    super.uniqueItems,
    super.multipleOf,
    super.externalDocs,
    super.discriminator,
    super.allOf,
    super.$deprecated,
  });

  /// Creates a [SchemaV20] from a JSON object.
  factory SchemaV20.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    return SchemaV20(
      type: json['type'] as String?,
      ref: json[r'$ref'] as String?,
      format: json['format'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      $required: (json['required'] as List? ?? []).cast<String>(),
      properties: (json['properties'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      example: json['example'],
      items:
          json['items'] != null
              ? Schema.fromJson(
                json['items'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      enumValues: (json['enum'] as List?)?.map((e) => e).toList(),
      $default: json['default'],
      xml:
          json['xml'] != null
              ? Xml.fromJson(json['xml'] as Map<String, dynamic>)
              : null,
      additionalProperties:
          json['additionalProperties'] != null
              ? Schema.fromJson(
                json['additionalProperties'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      maximum: numOrNull(json['maximum']),
      minimum: numOrNull(json['minimum']),
      allowEmptyValue: json['allowEmptyValue'] as bool?,
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
      allOf:
          (json['allOf'] as List?)
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      collectionFormat: json['collectionFormat'] as String?,
      maxItems: intOrNull(json['maxItems']),
      minItems: intOrNull(json['minItems']),
      pattern: json['pattern'] as String?,
      uniqueItems: json['uniqueItems'] as bool?,
      multipleOf: numOrNull(json['multipleOf']),
      maxLength: intOrNull(json['maxLength']),
      minLength: intOrNull(json['minLength']),
      exclusiveMaximum: json['exclusiveMaximum'] as bool?,
      exclusiveMinimum: json['exclusiveMinimum'] as bool?,
      $deprecated: json['deprecated'] as bool?,
    );
  }

  /// The exclusive maximum value for a number.
  final bool? exclusiveMaximum;

  /// The exclusive minimum value for a number.
  final bool? exclusiveMinimum;

  /// The default value for the schema.
  final dynamic $default;
  @override
  Map<String, dynamic> toJson() {
    return {
      if (ref != null) r'$ref': ref,
      if (type != null) 'type': type,
      if (format != null) 'format': format,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if ($required != null && $required!.isNotEmpty) 'required': $required,
      if (properties != null && properties!.isNotEmpty)
        'properties': properties!.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (items != null) 'items': items!.toJson(),
      if (enumValues != null && enumValues!.isNotEmpty) 'enum': enumValues,
      if ($default != null) 'default': $default,
      if (xml != null) 'xml': xml!.toJson(),
      if (example != null) 'example': example,
      if (additionalProperties != null)
        'additionalProperties': additionalProperties!.toJson(),
      if (maximum != null) 'maximum': maximum,
      if (minimum != null) 'minimum': minimum,
      if (externalDocs != null) 'externalDocs': externalDocs!.toJson(),
      if (discriminator != null) 'discriminator': discriminator!.toJson(),
      if (allOf != null) 'allOf': allOf!.map((s) => s.toJson()).toList(),
      if (collectionFormat != null) 'collectionFormat': collectionFormat,
      if (minLength != null) 'minLength': minLength,
      if (maxLength != null) 'maxLength': maxLength,
      if (minItems != null) 'minItems': minItems,
      if (maxItems != null) 'maxItems': maxItems,
      if (pattern != null) 'pattern': pattern,
      if (multipleOf != null) 'multipleOf': multipleOf,
      if (uniqueItems != null) 'uniqueItems': uniqueItems,
      if (exclusiveMaximum != null) 'exclusiveMaximum': exclusiveMaximum,
      if (exclusiveMinimum != null) 'exclusiveMinimum': exclusiveMinimum,
      if ($deprecated != null) 'deprecated': $deprecated,
      if (allowEmptyValue != null) 'allowEmptyValue': allowEmptyValue,
    };
  }
}

/// Represents an OpenAPI 3.0 Schema Object.
@immutable
class SchemaV30 extends Schema {
  /// Creates a [SchemaV30] object.
  const SchemaV30({
    super.ref,
    super.type,
    super.format,
    super.title,
    super.description,
    super.$required,
    super.properties,
    super.items,
    super.example,
    super.enumValues,
    super.xml,
    super.additionalProperties,
    this.readOnly,
    this.writeOnly,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.$default,
    this.nullable,
    super.maximum,
    super.minimum,
    super.externalDocs,
    super.discriminator,
    super.allOf,
    super.oneOf,
    super.anyOf,
    super.maxLength,
    super.minLength,
    super.pattern,
    super.multipleOf,
    super.maxItems,
    super.minItems,
    super.uniqueItems,
    super.$deprecated,
    this.not,
    this.examples,
  });

  /// Creates a [SchemaV30] from a JSON object.
  factory SchemaV30.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    return SchemaV30(
      type: json['type'] as String?,
      ref: json[r'$ref'] as String?,
      format: json['format'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      $required: (json['required'] as List? ?? []).cast<String>(),
      properties: (json['properties'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      example: json['example'],
      items:
          json['items'] != null
              ? Schema.fromJson(
                json['items'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      enumValues: (json['enum'] as List?)?.map((e) => e).toList(),
      xml:
          json['xml'] != null
              ? Xml.fromJson(json['xml'] as Map<String, dynamic>)
              : null,
      additionalProperties:
          json['additionalProperties'] != null
              ? Schema.fromJson(
                json['additionalProperties'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      readOnly: json['readOnly'] as bool?,
      writeOnly: json['writeOnly'] as bool?,
      exclusiveMaximum:
          json['exclusiveMaximum'] is bool
              ? (json['exclusiveMaximum'] as bool)
              : null,
      exclusiveMinimum:
          json['exclusiveMinimum'] is bool
              ? (json['exclusiveMinimum'] as bool)
              : null,
      maximum: numOrNull(json['maximum']),
      minimum: numOrNull(json['minimum']),
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
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      anyOf:
          (json['anyOf'] as List?)
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      allOf:
          (json['allOf'] as List?)
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      maxItems: intOrNull(json['maxItems']),
      minItems: intOrNull(json['minItems']),
      pattern: json['pattern'] as String?,
      uniqueItems: json['uniqueItems'] as bool?,
      multipleOf: numOrNull(json['multipleOf']),
      maxLength: intOrNull(json['maxLength']),
      minLength: intOrNull(json['minLength']),
      $deprecated: json['deprecated'] as bool?,
      $default: json['default'],
      nullable: json['nullable'] as bool?,
      not:
          json['not'] != null
              ? Schema.fromJson(
                json['not'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      examples: json['examples'] as List?,
    );
  }

  /// The exclusive maximum value for a number.
  final bool? exclusiveMaximum;

  /// The exclusive minimum value for a number.
  final bool? exclusiveMinimum;

  /// v3.1 property indicating if the property is read-only.
  final bool? readOnly;

  /// v3.1 property indicating if the property is write-only.
  final bool? writeOnly;

  /// The default value for the schema.
  final dynamic $default;

  ///The property is nullable or not.
  final bool? nullable;

  /// A schema that the instance must not be valid against.
  final Schema? not;

  /// A list of example values for the schema.
  final List<dynamic>? examples;

  @override
  Map<String, dynamic> toJson() {
    return {
      if (ref != null) r'$ref': ref,
      if (type != null) 'type': type,
      if (format != null) 'format': format,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if ($required != null && $required!.isNotEmpty) 'required': $required,
      if (properties != null && properties!.isNotEmpty)
        'properties': properties!.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (items != null) 'items': items!.toJson(),
      if (enumValues != null && enumValues!.isNotEmpty) 'enum': enumValues,
      if (xml != null) 'xml': xml!.toJson(),
      if (example != null) 'example': example,
      if (additionalProperties != null)
        'additionalProperties': additionalProperties!.toJson(),
      if (readOnly != null) 'readOnly': readOnly,
      if (writeOnly != null) 'writeOnly': writeOnly,
      if (exclusiveMaximum != null) 'exclusiveMaximum': exclusiveMaximum,
      if (exclusiveMinimum != null) 'exclusiveMinimum': exclusiveMinimum,
      if (maximum != null) 'maximum': maximum,
      if (minimum != null) 'minimum': minimum,
      if (externalDocs != null) 'externalDocs': externalDocs!.toJson(),
      if (discriminator != null) 'discriminator': discriminator!.toJson(),
      if (oneOf != null) 'oneOf': oneOf!.map((s) => s.toJson()).toList(),
      if (anyOf != null) 'anyOf': anyOf!.map((s) => s.toJson()).toList(),
      if (allOf != null) 'allOf': allOf!.map((s) => s.toJson()).toList(),
      if (not != null) 'not': not!.toJson(),
      if (minLength != null) 'minLength': minLength,
      if (maxLength != null) 'maxLength': maxLength,
      if (minItems != null) 'minItems': minItems,
      if (maxItems != null) 'maxItems': maxItems,
      if (pattern != null) 'pattern': pattern,
      if (multipleOf != null) 'multipleOf': multipleOf,
      if (uniqueItems != null) 'uniqueItems': uniqueItems,
      if ($deprecated != null) 'deprecated': $deprecated,
      if ($default != null) 'default': $default,
      if (nullable != null) 'nullable': nullable,
      if (examples != null) 'examples': examples,
    };
  }
}

/// Represents an OpenAPI 3.1 Schema Object.
@immutable
class SchemaV31 extends Schema {
  /// Creates a [SchemaV31] object.
  const SchemaV31({
    super.ref,
    super.type,
    super.format,
    super.title,
    super.description,
    super.$required,
    super.properties,
    super.items,
    super.example,
    super.enumValues,
    super.xml,
    super.additionalProperties,
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
    this.not,
    this.$comment,
    super.maximum,
    super.minimum,
    this.$default,
    super.externalDocs,
    super.discriminator,
    super.allOf,
    super.oneOf,
    super.anyOf,
    super.maxLength,
    super.minLength,
    super.pattern,
    super.multipleOf,
    super.maxItems,
    super.minItems,
    super.uniqueItems,
    super.$deprecated,
    this.typeList,
  });

  /// Creates a [SchemaV31] from a JSON object.
  factory SchemaV31.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    final typeValue = json['type'];
    final String? singleType;
    final List<dynamic>? listOfTypes;
    if (typeValue is String) {
      singleType = typeValue;
      listOfTypes = null;
    } else if (typeValue is List) {
      listOfTypes = typeValue;
      singleType = null;
    } else {
      singleType = null;
      listOfTypes = null;
    }

    return SchemaV31(
      type: singleType,
      typeList: listOfTypes,
      ref: json[r'$ref'] as String?,
      format: json['format'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      $required: (json['required'] as List? ?? []).cast<String>(),
      properties: (json['properties'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Schema.fromJson(value as Map<String, dynamic>, version: version),
        ),
      ),
      example: json['example'],
      items:
          json['items'] != null
              ? Schema.fromJson(
                json['items'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      enumValues: (json['enum'] as List?)?.map((e) => e).toList(),
      xml:
          json['xml'] != null
              ? Xml.fromJson(json['xml'] as Map<String, dynamic>)
              : null,
      additionalProperties:
          json['additionalProperties'] != null
              ? Schema.fromJson(
                json['additionalProperties'] as Map<String, dynamic>,
                version: version,
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
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      anyOf:
          (json['anyOf'] as List?)
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      allOf:
          (json['allOf'] as List?)
              ?.map(
                (e) => Schema.fromJson(
                  e as Map<String, dynamic>,
                  version: version,
                ),
              )
              .toList(),
      maxItems: intOrNull(json['maxItems']),
      minItems: intOrNull(json['minItems']),
      pattern: json['pattern'] as String?,
      uniqueItems: json['uniqueItems'] as bool?,
      multipleOf: numOrNull(json['multipleOf']),
      maxLength: intOrNull(json['maxLength']),
      minLength: intOrNull(json['minLength']),
      $deprecated: json['deprecated'] as bool?,
      not:
          json['not'] != null
              ? Schema.fromJson(
                json['not'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      $comment: json[r'$comment'] as String?,
    );
  }

  ///
  final num? exclusiveMaximum;

  ///
  final num? exclusiveMinimum;

  /// v3.1 property indicating if the property is read-only.
  final bool? readOnly;

  /// v3.1 property indicating if the property is write-only.
  final bool? writeOnly;

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

  /// A comment that can be added to the schema.
  final String? $comment;

  /// A schema that the instance must not be valid against.
  final Schema? not;

  /// eg . type : [string , null]
  final List<dynamic>? typeList;

  @override
  Map<String, dynamic> toJson() {
    final dynamic typeToSerialize = type ?? typeList;

    return {
      if (ref != null) r'$ref': ref,
      if (typeToSerialize != null) 'type': typeToSerialize,
      if (format != null) 'format': format,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if ($required != null && $required!.isNotEmpty) 'required': $required,
      if (properties != null && properties!.isNotEmpty)
        'properties': properties!.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
      if (items != null) 'items': items!.toJson(),
      if (enumValues != null && enumValues!.isNotEmpty) 'enum': enumValues,
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
      if (minLength != null) 'minLength': minLength,
      if (maxLength != null) 'maxLength': maxLength,
      if (minItems != null) 'minItems': minItems,
      if (maxItems != null) 'maxItems': maxItems,
      if (pattern != null) 'pattern': pattern,
      if (multipleOf != null) 'multipleOf': multipleOf,
      if (uniqueItems != null) 'uniqueItems': uniqueItems,
      if ($deprecated != null) 'deprecated': $deprecated,
      if ($comment != null) r'$comment': $comment,
      if (not != null) 'not': not!.toJson(),
    };
  }
}
