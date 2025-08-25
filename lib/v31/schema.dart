import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec_plus/v31/discriminator.dart';
import 'package:openapi_spec_plus/v31/external_docs.dart';
import 'package:openapi_spec_plus/v31/xml.dart';

part 'schema.freezed.dart';
part 'schema.g.dart';

/// The **Schema** Object allows the definition of input and output data types
/// for OpenAPI 3.1.
///
/// It describes the data type, format, constraints, and structure of
/// properties, request bodies, and other parts of the OpenAPI specification.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class Schema with _$Schema {
  /// Creates a [Schema] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Schema({
    /// A reference to another Schema Object, typically in the `components`
    /// section.
    @JsonKey(name: r'$ref') String? ref,

    /// The data type of the schema (e.g., 'string', 'number', 'array').
    /// In OpenAPI 3.1, this can be a single type or a list of types.
    @JsonKey(includeFromJson: false, includeToJson: true) dynamic type,

    /// The format of the data type (e.g., 'int32', 'date-time', 'email').
    String? format,

    /// A title for the schema.
    String? title,

    /// A brief description of the schema.
    String? description,

    /// A list of properties that must be present in the object.
    @JsonKey(name: 'required') List<String>? $required,

    /// A map of property names to their respective [Schema] objects.
    Map<String, Schema>? properties,

    /// For array types, this describes the type of items in the array.
    Schema? items,

    /// An example value for the schema.
    dynamic example,

    /// A list of example values for the schema.
    List<dynamic>? examples,

    /// A list of possible values for an enum.
    @JsonKey(name: 'enum') List<dynamic>? enumValues,

    /// The default value for the schema.
    @JsonKey(name: 'default') dynamic $default,

    /// This MAY be used only on properties schemas.
    /// It has no effect on root schemas.
    /// Adds Additional metadata to describe the XML representation format of
    /// this property.
    Xml? xml,

    /// Specifies the schema for any additional properties in the object.
    dynamic additionalProperties,

    /// The maximum value for a number.
    num? maximum,

    /// The exclusive maximum value for a number.
    num? exclusiveMaximum,

    /// The minimum value for a number.
    num? minimum,

    /// The exclusive minimum value for a number.
    num? exclusiveMinimum,

    /// A URL to external documentation for this schema.
    ExternalDocs? externalDocs,

    /// A **Discriminator** object for handling polymorphism.
    Discriminator? discriminator,

    /// An array of schemas where the data must be valid against all of
    /// the schemas.
    List<Schema>? allOf,

    /// An array of schemas where the data must be valid against one of
    /// the schemas.
    List<Schema>? oneOf,

    /// An array of schemas where the data must be valid against any of
    /// the schemas.
    List<Schema>? anyOf,

    /// A schema where the data must not be valid against this schema.
    Schema? not,

    /// A `true` value indicates that both `null` values and values of the
    /// specified `type` are allowed.
    bool? nullable,

    /// Relevant only for Schema Object properties definitions.
    /// Declares the property as "read only".
    bool? readOnly,

    /// Relevant only for Schema Object properties definitions.
    /// Declares the property as "write only".
    bool? writeOnly,

    /// Sets the ability to pass empty-valued parameters.
    bool? allowEmptyValue,

    /// Determines the format of the array if type array is used.
    String? collectionFormat,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.1.
    int? maxLength,

    /// integer See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.2.
    int? minLength,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.2.
    int? maxItems,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
    int? minItems,

    /// string  See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.3.
    String? pattern,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
    bool? uniqueItems,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.1
    int? maxProperties,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.2
    int? minProperties,

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
    num? multipleOf,

    /// Declares this schema as deprecated.
    @JsonKey(name: 'deprecated') bool? $deprecated,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,

    /// A unique identifier for the schema.
    String? $id,

    /// The schema dialect used.
    String? $schema,

    /// A vocabulary identifier.
    String? $vocabulary,

    /// An anchor for this schema.
    String? $anchor,

    /// A dynamic anchor for dynamic references.
    String? $dynamicAnchor,

    /// A dynamic reference to a dynamic anchor.
    String? $dynamicRef,

    /// A map of definitions that can be referenced internally.
    Map<String, Schema>? $defs,

    /// The media type of a string.
    String? contentMediaType,

    /// The content encoding of a string.
    String? contentEncoding,

    /// A vendor-specific swagger extension.
    @JsonKey(name: 'swagger-extension') bool? swaggerExtension,

    /// A constant value for the schema.
    @JsonKey(name: 'const') dynamic const$,

    /// A map of regular expressions to schemas for pattern-based properties.
    Map<String, Schema>? patternProperties,

    /// https://stackoverflow.com/questions/79247662/exact-definition-of-unevaluatedproperties-in-jsonschema
    bool? unevaluatedProperties,
  }) = _Schema;

  const Schema._();

  /// Creates a [Schema] from a JSON object.
  factory Schema.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });
    dynamic parsedAdditionalProperties;
    if (json.containsKey('additionalProperties')) {
      final ap = json['additionalProperties'];
      if (ap is bool) {
        parsedAdditionalProperties = ap;
      } else if (ap is Map<String, dynamic>) {
        parsedAdditionalProperties = Schema.fromJson(ap);
      }
    }
    dynamic parsedType;
    if (json.containsKey('type')) {
      final t = json['type'];
      if (t is String) {
        parsedType = t;
      } else if (t is List) {
        parsedType = t.cast<String>();
      }
    }

    return _$SchemaFromJson(json).copyWith(
      extensions: extensions,
      additionalProperties: parsedAdditionalProperties,
      type: parsedType,
    );
  }

  /// Creates a [Schema] for a string.
  factory Schema.string({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    String? $default,
    int? maxLength,
    int? minLength,
    String? pattern,
  }) => Schema(
    type: 'string',
    format: format,
    title: title,
    description: description,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
    minLength: minLength,
    maxLength: maxLength,
    pattern: pattern,
  );

  /// Creates a [Schema] for a string.
  factory Schema.nullableString({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    String? $default,
    int? maxLength,
    int? minLength,
    String? pattern,
  }) => Schema(
    type: ['string', 'null'],
    format: format,
    title: title,
    description: description,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
    minLength: minLength,
    maxLength: maxLength,
    pattern: pattern,
  );

  /// Creates a [Schema] for an integer.
  factory Schema.integer({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    num? maximum,
    num? minimum,
    num? multipleOf,
    num? exclusiveMaximum,
    num? exclusiveMinimum,
    bool? readOnly,
    bool? writeOnly,
    int? $default,
  }) => Schema(
    type: 'integer',
    format: format,
    title: title,
    description: description,
    examples: examples,
    maximum: maximum,
    minimum: minimum,
    multipleOf: multipleOf,
    exclusiveMaximum: exclusiveMaximum,
    exclusiveMinimum: exclusiveMinimum,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for a nullable integer.
  factory Schema.nullableInteger({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    num? maximum,
    num? minimum,
    num? multipleOf,
    num? exclusiveMaximum,
    num? exclusiveMinimum,
    bool? readOnly,
    bool? writeOnly,
    int? $default,
  }) => Schema(
    type: ['integer', 'null'],
    format: format,
    title: title,
    description: description,
    examples: examples,
    maximum: maximum,
    minimum: minimum,
    multipleOf: multipleOf,
    exclusiveMaximum: exclusiveMaximum,
    exclusiveMinimum: exclusiveMinimum,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for a number (float or double).
  factory Schema.number({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    num? maximum,
    num? minimum,
    num? multipleOf,
    num? exclusiveMaximum,
    num? exclusiveMinimum,
    bool? readOnly,
    bool? writeOnly,
    num? $default,
  }) => Schema(
    type: 'number',
    format: format,
    title: title,
    description: description,
    examples: examples,
    maximum: maximum,
    minimum: minimum,
    multipleOf: multipleOf,
    exclusiveMaximum: exclusiveMaximum,
    exclusiveMinimum: exclusiveMinimum,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for a nullable number (float or double).
  factory Schema.nullableNumber({
    String? format,
    String? title,
    String? description,
    List<dynamic>? examples,
    num? maximum,
    num? minimum,
    num? multipleOf,
    num? exclusiveMaximum,
    num? exclusiveMinimum,
    bool? readOnly,
    bool? writeOnly,
    num? $default,
  }) => Schema(
    type: ['number', 'null'],
    format: format,
    title: title,
    description: description,
    examples: examples,
    maximum: maximum,
    minimum: minimum,
    multipleOf: multipleOf,
    exclusiveMaximum: exclusiveMaximum,
    exclusiveMinimum: exclusiveMinimum,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for a boolean.
  factory Schema.boolean({
    String? title,
    String? description,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    bool? $default,
  }) => Schema(
    type: 'boolean',
    title: title,
    description: description,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for a nullable boolean.
  factory Schema.nullableBoolean({
    String? title,
    String? description,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    bool? $default,
  }) => Schema(
    type: ['boolean', 'null'],
    title: title,
    description: description,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    $default: $default,
  );

  /// Creates a [Schema] for an array.
  factory Schema.array({
    String? title,
    String? description,
    Schema? items,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    int? maxItems,
    int? minItems,
    bool? uniqueItems,
    String? collectionFormat,
    bool? allowEmptyValue,
    List<dynamic>? $default,
  }) => Schema(
    type: 'array',
    title: title,
    description: description,
    items: items,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    maxItems: maxItems,
    minItems: minItems,
    uniqueItems: uniqueItems,
    collectionFormat: collectionFormat,
    allowEmptyValue: allowEmptyValue,
    $default: $default,
  );

  /// Creates a [Schema] for a nullable array.
  factory Schema.nullableArray({
    String? title,
    String? description,
    Schema? items,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    int? maxItems,
    int? minItems,
    bool? uniqueItems,
    String? collectionFormat,
    bool? allowEmptyValue,
    List<dynamic>? $default,
  }) => Schema(
    type: ['array', 'null'],
    title: title,
    description: description,
    items: items,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    maxItems: maxItems,
    minItems: minItems,
    uniqueItems: uniqueItems,
    collectionFormat: collectionFormat,
    allowEmptyValue: allowEmptyValue,
    $default: $default,
  );

  /// Creates a [Schema] for an object.
  factory Schema.object({
    String? title,
    String? description,
    List<String>? $required,
    Map<String, Schema>? properties,
    dynamic additionalProperties,
    Map<String, Schema>? patternProperties,
    bool? unevaluatedProperties,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    int? maxProperties,
    int? minProperties,
    Map<String, dynamic>? $default,
  }) => Schema(
    type: 'object',
    title: title,
    description: description,
    $required: $required,
    properties: properties,
    additionalProperties: additionalProperties,
    patternProperties: patternProperties,
    unevaluatedProperties: unevaluatedProperties,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    maxProperties: maxProperties,
    minProperties: minProperties,
    $default: $default,
  );

  /// Creates a [Schema] for a nullable object.
  factory Schema.nullableObject({
    String? title,
    String? description,
    List<String>? $required,
    Map<String, Schema>? properties,
    dynamic additionalProperties,
    Map<String, Schema>? patternProperties,
    bool? unevaluatedProperties,
    List<dynamic>? examples,
    bool? readOnly,
    bool? writeOnly,
    int? maxProperties,
    int? minProperties,
    Map<String, dynamic>? $default,
  }) => Schema(
    type: ['object', 'null'],
    title: title,
    description: description,
    $required: $required,
    properties: properties,
    additionalProperties: additionalProperties,
    patternProperties: patternProperties,
    unevaluatedProperties: unevaluatedProperties,
    examples: examples,
    readOnly: readOnly,
    writeOnly: writeOnly,
    maxProperties: maxProperties,
    minProperties: minProperties,
    $default: $default,
  );

  /// Creates a [Schema] for a reference to another schema.
  factory Schema.ref(String ref) => Schema(ref: ref);

  /// Creates a [Schema] for a union of multiple schemas.
  factory Schema.oneOf(List<Schema> schemas) => Schema(oneOf: schemas);

  /// Creates a [Schema] for a union where all schemas must be valid.
  factory Schema.allOf(List<Schema> schemas) => Schema(allOf: schemas);

  /// Creates a [Schema] for a union where any of the schemas must be valid.
  factory Schema.anyOf(List<Schema> schemas) => Schema(anyOf: schemas);

  /// Creates a [Schema] with a constant value.
  factory Schema.constant(dynamic value) => Schema(const$: value);

  /// Converts a [Schema] to a JSON object.
  Map<String, dynamic> toJson() {
    final json = _$SchemaToJson(this as _Schema);

    if (extensions != null) {
      json.addAll(extensions!);
    }
    if (additionalProperties != null) {
      if (additionalProperties is bool) {
        json['additionalProperties'] = additionalProperties;
      } else if (additionalProperties is Schema) {
        json['additionalProperties'] = (additionalProperties!).toJson();
      }
    }

    return json;
  }
}
