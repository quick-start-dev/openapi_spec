import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/external_docs.dart';
import 'package:openapi_spec/v20/info.dart';
import 'package:openapi_spec/v20/path.dart';
import 'package:openapi_spec/v20/schema.dart';
import 'package:openapi_spec/v20/security.dart';
import 'package:openapi_spec/v20/tag.dart';

part 'openapi_spec.freezed.dart';
part 'openapi_spec.g.dart';

/// The root document object of the OpenAPI 2.0 (Swagger) specification.
///
/// This class represents the top-level structure of an OpenAPI 2.0 document,
/// including metadata, definitions, paths, and security schemes.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class OpenApiSpec with _$OpenApiSpec {
  /// Creates an [OpenApiSpec] with the given parameters.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory OpenApiSpec({
    /// The version of the Swagger specification.
    @Default('2.0') String swagger,

    /// Metadata about the API.
    Info? info,

    /// The host serving the API.
    String? host,

    /// The base path for all API paths.
    String? basePath,

    /// The transfer protocols to be used.
    List<String>? schemes,

    /// A list of MIME types the API can consume.
    List<String>? consumes,

    /// A list of MIME types the API can produce.
    List<String>? produces,

    /// The available paths and their operations.
    @Default({}) Map<String, PathItem> paths,

    /// An object to hold reusable schema definitions.
    @Default({}) Map<String, Schema> definitions,

    /// A declaration of security schemes used in the API.
    @Default({}) Map<String, SecurityScheme> securityDefinitions,

    /// A declaration of which security schemes are required for the entire API.
    @Default([]) List<SecurityRequirement> security,

    /// External documentation for the API.
    ExternalDocs? externalDocs,

    /// A list of tags for API documentation.
    @Default([]) List<Tag> tags,

    /// A map of OpenAPI extensions.
    Map<String, dynamic>? extensions,
  }) = _OpenApiSpec;

  /// https://github.com/rrousselGit/freezed/issues/697
  const OpenApiSpec._();

  /// Creates an [OpenApiSpec] from a JSON-like map.
  factory OpenApiSpec.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });

    return _$OpenApiSpecFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [OpenApiSpec] to JSON.
  Map<String, dynamic> toJson() {
    final json = _$OpenApiSpecToJson(this as _OpenApiSpec);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}
