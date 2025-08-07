import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/schema.dart';

part 'header.freezed.dart';
part 'header.g.dart';

/// Represents a response header definition.
///
/// This class defines a single header, which can include a description
/// and a schema for its value.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Header with _$Header {
  /// Creates a [Header] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Header({
    /// A brief description of the header.
    String? description,

    /// The data type of the header value (for OpenAPI 2.0).
    String? type,

    /// The format of the header value (for OpenAPI 2.0).
    String? format,

    /// The schema for the header value.
    Schema? schema,

    /// The reference to the header value
    @JsonKey(name: r'$ref') String? ref,
  }) = _Header;

  /// Creates a [Header] from a JSON object.
  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}
