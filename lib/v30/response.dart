import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:openapi_spec/v30/header.dart';
import 'package:openapi_spec/v30/link.dart';
import 'package:openapi_spec/v30/media_type.dart';

part 'response.freezed.dart';
part 'response.g.dart';

/// Describes a single API response.
///
/// This class represents a response definition in an OpenAPI document,
/// including its description, content, and headers.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class Response with _$Response {
  /// Creates a [Response] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Response({
    /// A brief description of the response.
    required String description,

    /// The content of the response for OpenAPI 3.0.
    Map<String, MediaType>? content,

    /// A map of headers for this response.
    Map<String, Header>? headers,

    /// A map of operations links that can be followed from the response.
    /// The key of the map is a short name for the link,
    /// following the naming constraints of the names for Component Objects.
    Map<String, Link>? links,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _Response;

  const Response._();

  /// Creates a [Response] from a JSON object.
  factory Response.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });
    return _$ResponseFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [Response] to JSON.
  Map<String, dynamic> toJson() {
    final json = _$ResponseToJson(this as _Response);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}
