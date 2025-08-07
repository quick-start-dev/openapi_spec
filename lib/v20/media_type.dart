import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/schema.dart';

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
  }) = _MediaType;

  /// Creates a [MediaType] from json.
  factory MediaType.fromJson(Map<String, dynamic> json) =>
      _$MediaTypeFromJson(json);
}
