import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec/v20/discriminator.dart';
import 'package:openapi_spec/v20/external_docs.dart';
import 'package:openapi_spec/v20/xml.dart';

part 'schema.freezed.dart';
part 'schema.g.dart';

/// The **Schema** Object allows the definition of input and output data types
/// for OpenAPI 2.0.
///
/// It describes the data type, format, constraints, and structure of
/// properties, request bodies, and other parts of the OpenAPI specification.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Schema with _$Schema {
  /// Creates a [Schema] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Schema({
    /// A reference to another Schema Object, typically in the `components`
    /// section.
    @JsonKey(name: r'$ref') String? ref,

    /// The data type of the schema (e.g., 'string', 'number', 'array').
    String? type,

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
    Schema? additionalProperties,

    /// The maximum value for a number.
    num? maximum,

    /// The exclusive maximum value for a number.
    bool? exclusiveMaximum,

    /// The minimum value for a number.
    num? minimum,

    /// The exclusive minimum value for a number.
    bool? exclusiveMinimum,

    /// A URL to external documentation for this schema.
    ExternalDocs? externalDocs,

    /// A **Discriminator** object for handling polymorphism.
    Discriminator? discriminator,

    /// An array of schemas where the data must be valid against all of
    /// the schemas.
    List<Schema>? allOf,

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

    /// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
    num? multipleOf,

    /// Declares this schema as deprecated.
    @JsonKey(name: 'deprecated') bool? $deprecated,
  }) = _Schema;

  /// Creates a [Schema] from a JSON object.
  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);

  /// Converts a [Schema] to a JSON object.
  @override
  Map<String, dynamic> toJson() => _$SchemaToJson(this as _Schema);
}
