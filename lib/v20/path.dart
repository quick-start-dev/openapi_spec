import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/operation.dart';
import 'package:openapi_spec/v20/parameter.dart';
part 'path.freezed.dart';
part 'path.g.dart';

/// Describes the operations available on a single path.
/// A Path Item MAY be empty, due to ACL constraints.
/// The path itself is still exposed to the documentation viewer
/// but they will not know which operations and parameters are available.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class PathItem with _$PathItem {
  /// Creates a [PathItem] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory PathItem({
    /// The definition for the `GET` operation.
    Operation? get,

    /// The definition for the `POST` operation.
    Operation? post,

    /// The definition for the `PUT` operation.
    Operation? put,

    /// The definition for the `DELETE` operation.
    Operation? delete,

    /// The definition for the `PATCH` operation.
    Operation? patch,

    /// The definition for the `OPTIONS` operation.
    Operation? options,

    /// The definition for the `HEAD` operation.
    Operation? head,

    /// The definition for the `TRACE` operation.
    Operation? trace,

    @JsonKey(name: r'$ref') String? ref,

    /// A list of parameters that are applicable for all the operations
    /// described under this path.
    /// These parameters can be overridden at the operation level,
    /// but cannot be removed there.
    /// The list MUST NOT include duplicated parameters.
    /// A unique parameter is defined by a combination of a name and location.
    /// The list can use the Reference Object to link to parameters
    /// that are defined at the Swagger Object's parameters.
    /// There can be one "body" parameter at most.
    List<Parameter>? parameters,

    /// Allows extensions to the Swagger Schema.
    /// The field name MUST begin with x-, for example, x-internal-id.
    /// The value can be null, a primitive, an array or an object.
    /// See Vendor Extensions for further details.
    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _PathItem;

  /// Creates a [PathItem] from a JSON object.
  factory PathItem.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });
    return _$PathItemFromJson(json).copyWith(extensions: extensions);
  }
}
