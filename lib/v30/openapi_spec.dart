import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v30/components.dart';
import 'package:openapi_spec/v30/external_docs.dart';
import 'package:openapi_spec/v30/info.dart';
import 'package:openapi_spec/v30/path.dart';
import 'package:openapi_spec/v30/security.dart';
import 'package:openapi_spec/v30/server.dart';
import 'package:openapi_spec/v30/tag.dart';

part 'openapi_spec.freezed.dart';
part 'openapi_spec.g.dart';

/// The root document object of the OpenAPI 3.0 specification.
///
/// This class represents the top-level structure of an OpenAPI 3.0 document,
/// including metadata, servers, paths, and components.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class OpenAPI with _$OpenAPI {
  /// Creates an [OpenAPI] with the given parameters.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory OpenAPI({
    /// The version of the OpenAPI specification.
    /// A semver string which MUST begin with 3.0.
    @Default('3.0.0') String openapi,

    /// Metadata about the API.
    Info? info,

    /// An array of Server Objects, which provide connectivity information to a target server.
    @Default([]) List<Server> servers,

    /// The available paths and their operations.
    @Default({}) Map<String, PathItem> paths,

    /// An element to hold reusable objects for the specification.
    Components? components,

    /// A declaration of which security schemes are required for the entire API.
    @Default([]) List<SecurityRequirement> security,

    /// A list of tags for API documentation.
    @Default([]) List<Tag> tags,

    /// Additional external documentation for the API.
    ExternalDocs? externalDocs,

    /// A map of OpenAPI extensions.
    Map<String, dynamic>? extensions,
  }) = _OpenAPI;
  const OpenAPI._();

  /// Creates an [OpenAPI] from a JSON-like map.
  factory OpenAPI.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });

    return _$OpenAPIFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [OpenAPI] to JSON.
  Map<String, dynamic> toJson() {
    final json = _$OpenAPIToJson(this as _OpenAPI);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}
