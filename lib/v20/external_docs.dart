import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_docs.freezed.dart';
part 'external_docs.g.dart';

/// Represents external documentation for the API.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class ExternalDocs with _$ExternalDocs {
  /// Creates an [ExternalDocs] object.
  const factory ExternalDocs({
    /// A short description of the external documentation.
    @Default('') String description,

    /// The URL for the external documentation.
    @Default('') String url,
  }) = _ExternalDocs;

  /// Creates an [ExternalDocs] from a JSON object.
  factory ExternalDocs.fromJson(Map<String, dynamic> json) =>
      _$ExternalDocsFromJson(json);
}
