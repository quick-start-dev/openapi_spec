// The main class for an OpenAPI 3.1 specification.
import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/base_spec.dart';
import 'package:openapi_spec/src/model/components.dart';
import 'package:openapi_spec/src/model/path.dart';
import 'package:openapi_spec/src/model/server.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// The root document object of the OpenAPI 3.1 specification.
///
/// This class represents the top-level structure of an OpenAPI 3.1 document,
/// including metadata, servers, paths, components, and webhooks.
@immutable
class OpenApi31Spec extends BaseOpenApiSpec {
  /// Creates a new [OpenApi31Spec].
  const OpenApi31Spec({
    required super.openapi,
    super.info,
    this.servers = const [],
    super.paths = const {},
    super.externalDocs,
    super.tags = const [],
    this.components,
    this.webhooks = const {},
  });

  /// Creates an [OpenApi31Spec] from a JSON-like map.
  factory OpenApi31Spec.fromJson(Map<String, dynamic> json) {
    return OpenApi31Spec(
      openapi: json['openapi'] as String,
      info:
          json['info'] != null
              ? Info.fromJson(json['info'] as Map<String, dynamic>)
              : null,
      servers:
          (json['servers'] as List? ?? [])
              .map((e) => Server.fromJson(e as Map<String, dynamic>))
              .toList(),
      paths: (json['paths'] as Map? ?? {}).map(
        (key, value) => MapEntry(
          key as String,
          Path.fromJson(
            value as Map<String, dynamic>,
            version: OpenApiVersion.v31,
          ),
        ),
      ),
      components:
          json['components'] != null
              ? Components.fromJson(
                json['components'] as Map<String, dynamic>,
                OpenApiVersion.v31,
              )
              : null,
      tags:
          (json['tags'] as List? ?? [])
              .map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList(),
      externalDocs:
          json['externalDocs'] != null
              ? ExternalDocs.fromJson(
                json['externalDocs'] as Map<String, dynamic>,
              )
              : null,
      webhooks:
          json['webhooks'] != null
              ? (json['webhooks'] as Map<String, dynamic>).map(
                (key, value) => MapEntry(
                  key,
                  Path.fromJson(
                    value as Map<String, dynamic>,
                    version: OpenApiVersion.v31,
                  ),
                ),
              )
              : null,
    );
  }

  /// A list of servers on which the API is hosted.
  final List<Server> servers;

  /// An element to hold reusable objects for the specification.
  final Components? components;

  /// The incoming webhooks that an API provides.
  final Map<String, Path>? webhooks;

  /// Converts this [OpenApi31Spec] to json.
  @override
  Map<String, dynamic> toJson() {
    return {
      ...super.toJson(),
      if (servers.isNotEmpty)
        'servers': servers.map((e) => e.toJson()).toList(),
      if (components != null) 'components': components!.toJson(),
      if (webhooks != null)
        'webhooks': webhooks!.map(
          (key, value) => MapEntry(key, value.toJson()),
        ),
    };
  }
}
