import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v30/encoding.dart';
import 'package:openapi_spec/v30/example.dart';
import 'package:openapi_spec/v30/schema.dart';

part 'media_type.freezed.dart';
part 'media_type.g.dart';

/// Describes a single media type object, such as 'application/json' or 'image/png'.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class MediaType with _$MediaType {
  /// Creates a [MediaType].
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory MediaType({
    /// The schema for the content of the media type.
    Schema? schema,

    /// Example of the media type.
    dynamic example,

    /// Examples of the media type.
    Map<String, Example>? examples,

    /// A map between a property name and its encoding information.
    /// The key, being the property name,
    /// MUST exist in the schema as a property.
    Map<String, Encoding>? encoding,
  }) = _MediaType;

  /// Creates a [MediaType] from json.
  factory MediaType.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeFromJson(json);
}
