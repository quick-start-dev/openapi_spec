import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v31/components.dart';
import 'package:openapi_spec/v31/external_docs.dart';
import 'package:openapi_spec/v31/info.dart';
import 'package:openapi_spec/v31/path.dart';
import 'package:openapi_spec/v31/security.dart';
import 'package:openapi_spec/v31/server.dart';
import 'package:openapi_spec/v31/tag.dart';

part 'openapi_spec.freezed.dart';
part 'openapi_spec.g.dart';

/// The root document object of the OpenAPI 3.1 specification.
///
/// This class represents the top-level structure of an OpenAPI 3.1 document,
/// including metadata, servers, paths, components, and webhooks.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class OpenAPI with _$OpenAPI {
  /// Creates an [OpenAPI] with the given parameters.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory OpenAPI({
    /// Provides metadata about the API.
    required Info info,

    /// This string MUST be the semantic version number of the OpenAPI
    /// Specification version that the OpenAPI document uses.
    required String openapi,

    /// An array of Server Objects, which provide connectivity information \
    /// to a target server.
    List<Server>? servers,

    /// The available paths and operations for the API.
    @Default({}) Map<String, PathItem> paths,

    /// An element to hold reusable objects for the specification.
    Components? components,

    /// The default value for the $schema keyword within Schema Objects
    /// contained within this OAS document. This MUST be in the form of a URI.
    String? jsonSchemaDialect,

    /// A declaration of which security schemes are applied to the API
    /// as a whole.
    @Default([]) List<SecurityRequirement> security,

    /// A list of tags for API documentation control.
    @Default([]) List<Tag> tags,

    /// Additional external documentation.
    ExternalDocs? externalDocs,

    /// The incoming webhooks that MAY be received by the API.
    @Default({}) Map<String, PathItem> webhooks,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _OpenAPI;
  const OpenAPI._();

  /// Creates an [OpenAPI] from a JSON-like map, handling extensions manually.
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
