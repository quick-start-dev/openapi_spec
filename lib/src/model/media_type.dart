import 'package:openapi_spec/src/model/schema.dart';

/// Describes a single media type object, such as 'application/json' or 'image/png'.
class MediaType {
  /// Creates a [MediaType].
  const MediaType({this.schema});

  /// Creates a [MediaType] from json.
  factory MediaType.fromJson(Map<String, dynamic> json) {
    return MediaType(
      schema:
          json['schema'] != null
              ? Schema.fromJson(json['schema'] as Map<String, dynamic>)
              : null,
    );
  }

  /// The schema for the content of the media type.
  final Schema? schema;

  /// Converts this [MediaType] to json.
  Map<String, dynamic> toJson() {
    return {if (schema != null) 'schema': schema!.toJson()};
  }
}
