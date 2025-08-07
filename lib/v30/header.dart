import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v30/example.dart';
import 'package:openapi_spec/v30/media_type.dart';
import 'package:openapi_spec/v30/schema.dart';

part 'header.freezed.dart';
part 'header.g.dart';

/// Describes a single header for HTTP responses and multipart parts.
///
/// According to OpenAPI v3.0 spec:
/// name and in are omitted, style limited to "simple".
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Header with _$Header {
  /// Creates a new instance of the [Header] class.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Header({
    /// A brief description of the header.
    String? description,

    /// Determines whether this header is mandatory. Default is false.
    bool? required,

    /// Specifies that the header is deprecated and
    /// SHOULD be transitioned out of usage. Default is false.
    bool? deprecated,

    /// Describes how the header value will be serialized.
    /// Only "simple" is allowed for headers.
    String? style,

    /// When true, header values of type array or
    /// object generate a single header whose value is a comma-separated list.
    bool? explode,

    /// The schema defining the type used for the header.
    Schema? schema,

    /// Example of the header's potential value.
    dynamic example,

    /// Examples of the header's potential value.
    Map<String, Example>? examples,

    /// A map containing the representations for the header.
    /// Must only contain one entry.
    Map<String, MediaType>? content,

    /// Reference to a header object.
    @JsonKey(name: r'$ref') String? ref,
  }) = _Header;

  /// Creates a new instance of the [Header] class from a JSON object.
  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}
