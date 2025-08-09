import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec_plus/v20/header.dart';
import 'package:openapi_spec_plus/v20/media_type.dart';
import 'package:openapi_spec_plus/v20/schema.dart';

part 'response.freezed.dart';
part 'response.g.dart';

/// Describes a single API response.
///
/// This class represents a response definition in an OpenAPI document,
/// including its description, content, and headers.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Response with _$Response {
  /// Creates a [Response] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Response({
    /// A brief description of the response.
    required String description,

    /// The response schema for OpenAPI 2.0.
    Schema? schema,

    /// The content of the response for OpenAPI 3.0.
    Map<String, MediaType>? content,

    /// A map of headers for this response.
    Map<String, Header>? headers,

    /// The reference to the response schema.
    @JsonKey(name: r'$ref') String? ref,
  }) = _Response;

  /// Creates a [Response] from a JSON object.
  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
