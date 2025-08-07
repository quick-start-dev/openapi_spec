import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/src/util/enums.dart';
import 'package:openapi_spec/v30/schema.dart';

part 'parameter.freezed.dart';
part 'parameter.g.dart';

/// Describes a single operation parameter.
///
/// A unique parameter is defined by a combination of a [name] and [location].
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Parameter with _$Parameter {
  /// Creates a [Parameter] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Parameter({
    /// A reference to a Parameter Object, typically in the `components`
    /// section. If this field is non-null, all other fields must be null.
    @JsonKey(name: r'$ref') String? ref,

    /// The name of the parameter.
    String? name,

    /// The location of the parameter, typically `query`, `header`, `path`,
    /// or `cookie`.
    @JsonKey(name: 'in') ParameterLocation? location,

    /// A brief description of the parameter.
    String? description,

    /// Specifies whether the parameter is required.
    bool? required,

    /// Specifies whether the parameter is deprecated.
    bool? deprecated,

    /// Specifies the schema of the parameter's value (OpenAPI 3.0).
    Schema? schema,

    /// The data type of the parameter (OpenAPI 2.0).
    String? type,

    /// The format of the parameter's value (OpenAPI 2.0).
    String? format,

    /// The collection format for array parameters (OpenAPI 2.0).
    String? collectionFormat,

    /// For array types, describes the type of items in the array (OpenAPI 2.0).
    Schema? items,

    /// The maximum allowed value for a numeric parameter.
    num? maximum,

    /// The minimum allowed value for a numeric parameter.
    num? minimum,

    /// Specifies whether array or object parameters should be exploded.
    bool? explode,
  }) = _Parameter;

  /// Creates a [Parameter] from a JSON object.
  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}
