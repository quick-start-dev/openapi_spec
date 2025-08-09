import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v30/operation.dart';
import 'package:openapi_spec/v30/parameter.dart';
import 'package:openapi_spec/v30/server.dart';
part 'path.freezed.dart';
part 'path.g.dart';

/// Describes the operations available on a single path.
///
/// This class represents a path definition in an OpenAPI document,
/// which contains one or more HTTP operations.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
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

    /// The definition for the `HEAD` operation.
    Operation? head,

    /// The definition for the `OPTIONS` operation.
    Operation? options,

    /// The definition for the `TRACE` operation.
    Operation? trace,

    /// Allows for a referenced definition of this path item.
    /// The value MUST be in the form of a URL,
    /// and the referenced structure MUST be in the form of a Path Item Object.
    /// In case a Path Item Object field appears both in the defined object
    /// and the referenced object, the behavior is undefined.
    /// See the rules for resolving Relative References.
    @JsonKey(name: r'$ref') String? ref,

    /// An optional string summary,
    /// intended to apply to all operations in this path.
    String? summary,

    /// An optional string description,
    /// intended to apply to all operations in this path.
    /// CommonMark syntax MAY be used for rich text representation.
    String? description,

    /// An alternative servers array to service all operations in this path.
    /// If a servers array is specified at the OpenAPI Object level,
    /// it will be overridden by this value.
    List<Server>? servers,

    /// A list of parameters that are applicable for all the operations
    /// described under this path.
    /// These parameters can be overridden at the operation level,
    /// but cannot be removed there.
    /// The list MUST NOT include duplicated parameters.
    /// A unique parameter is defined by a combination of a name
    /// and location.
    /// The list can use the Reference Object to link to parameters
    /// that are defined at the OpenAPI Object's components/parameters.
    List<Parameter>? parameters,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _PathItem;
  const PathItem._();

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

  /// Converts this [PathItem] to JSON.
  Map<String, dynamic> toJson() {
    final json = _$PathItemToJson(this as _PathItem);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}
