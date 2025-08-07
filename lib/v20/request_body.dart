import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/media_type.dart';

part 'request_body.freezed.dart';
part 'request_body.g.dart';

/// Describes a single request body.
///
/// This class represents a request body definition in an OpenAPI document,
/// including its description, content, and whether it is required.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class RequestBody with _$RequestBody {
  /// Creates a [RequestBody] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory RequestBody({
    /// A brief description of the request body.
    String? description,

    /// Determines if the request body is required.
    @JsonKey(name: 'required') bool? $required,

    /// The content of the request body, mapped by media type.
    @Default({}) Map<String, MediaType> content,
  }) = _RequestBody;

  /// Creates a [RequestBody] from a JSON object.
  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);
}
