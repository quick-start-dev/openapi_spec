import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/media_type.dart';

/// Describes a single request body.
///
/// This class represents a request body definition in an OpenAPI document,
/// including its description, content, and whether it is required.
@immutable
class RequestBody {
  /// Creates a [RequestBody] object.
  const RequestBody({
    this.description,
    this.required = false,
    this.content = const {},
  });

  /// Creates a [RequestBody] from a JSON object.
  factory RequestBody.fromJson(Map<String, dynamic> json) {
    return RequestBody(
      description: json['description'] as String?,
      required: json['required'] as bool? ?? false,
      content: (json['content'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          MediaType.fromJson(value as Map<String, dynamic>),
        ),
      ),
    );
  }

  /// A brief description of the request body.
  final String? description;

  /// Determines if the request body is required.
  final bool required;

  /// The content of the request body, mapped by media type.
  final Map<String, MediaType> content;

  /// Converts this [RequestBody] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (required) 'required': required,
      if (content.isNotEmpty)
        'content': content.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}
