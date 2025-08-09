import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec_plus/v30/external_docs.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

/// Represents a tag used for grouping API operations.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Tag with _$Tag {
  /// Creates a [Tag] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Tag({
    /// The name of the tag.
    required String name,

    /// A short description for the tag.
    String? description,

    /// External documentation for this tag.
    ExternalDocs? externalDocs,
  }) = _Tag;

  /// Creates a [Tag] from a JSON object.
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
