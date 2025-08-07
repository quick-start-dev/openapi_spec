import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v30/header.dart';

part 'encoding.freezed.dart';
part 'encoding.g.dart';

/// A single encoding definition applied to a single schema property.
///
/// The Encoding Object is used to specify how a property within a schema
/// should be serialized when it's part of a multipart or
/// application/x-www-form-urlencoded request body.
@Freezed(
  copyWith: true,
  equal: true,
  toStringOverride: true,
  toJson: false,
  fromJson: false,
)
abstract class Encoding with _$Encoding {
  /// Creates an [Encoding] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Encoding({
    /// The Content-Type for encoding a specific property.
    String? contentType,

    /// A map allowing additional information to be provided as headers.
    /// This field is ignored if the request body media type is not a multipart.
    @Default({}) Map<String, Header> headers,

    /// Describes how a specific property value will be serialized.
    String? style,

    /// When this is true, property values of type array or object
    /// generate separate parameters for each value.
    bool? explode,

    /// When this is true, parameter values are serialized using reserved
    /// expansion as defined by RFC6570.
    bool? allowReserved,

    /// The reference to the Encoding Object.
    @JsonKey(name: r'$ref') String? ref,
  }) = _Encoding;
  const Encoding._();

  /// Creates an [Encoding] from a JSON object.
  factory Encoding.fromJson(Map<String, dynamic> json) {
    if (json.containsKey(r'$ref')) {
      return Encoding(ref: json[r'$ref'] as String);
    }
    return Encoding(
      contentType: json['contentType'] as String?,
      headers: (json['headers'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Header.fromJson(value as Map<String, dynamic>),
        ),
      ),
      style: json['style'] as String?,
      explode: json['explode'] as bool? ?? false,
      allowReserved: json['allowReserved'] as bool? ?? false,
    );
  }

  /// Converts this [Encoding] object to a JSON map.
  Map<String, dynamic> toJson() {
    if (ref != null) {
      return {r'$ref': ref};
    }
    final map = _$EncodingToJson(this as _Encoding);
    if (allowReserved == null) {
      map.remove('allowReserved');
    }
    map.removeWhere(
      (key, value) =>
          value == null ||
          (value is Map && value.isEmpty) ||
          (value is List && value.isEmpty),
    );
    return map;
  }
}
