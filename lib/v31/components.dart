import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v31/callback.dart';
import 'package:openapi_spec/v31/example.dart';
import 'package:openapi_spec/v31/header.dart';
import 'package:openapi_spec/v31/link.dart';
import 'package:openapi_spec/v31/parameter.dart';
import 'package:openapi_spec/v31/path.dart';
import 'package:openapi_spec/v31/request_body.dart';
import 'package:openapi_spec/v31/response.dart';
import 'package:openapi_spec/v31/schema.dart';
import 'package:openapi_spec/v31/security.dart';

part 'components.freezed.dart';
part 'components.g.dart';

/// An object to hold reusable objects for the specification.
///
/// This class represents the `components` section of an OpenAPI document, where
/// reusable schemas, responses, parameters, and other objects are defined.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
abstract class Components with _$Components {
  /// Creates a [Components] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Components({
    /// The schemas available for reuse.
    Map<String, Schema>? schemas,

    /// The responses available for reuse.
    Map<String, Response>? responses,

    /// The parameters available for reuse.
    Map<String, Parameter>? parameters,

    /// The request bodies available for reuse.
    Map<String, RequestBody>? requestBodies,

    /// The security schemes available for reuse.
    Map<String, SecurityScheme>? securitySchemes,

    /// The headers available for reuse.
    Map<String, Header>? headers,

    /// An object to hold reusable Link Objects.
    Map<String, Link>? links,

    /// The callbacks available for reuse.
    Map<String, Callback>? callbacks,

    /// The path items available for reuse.
    Map<String, PathItem>? pathItems,

    /// The OpenAPI extensions available for reuse.
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,

    /// An object to hold reusable Example Objects.
    Map<String, Example>? examples,
  }) = _Components;
  const Components._();

  /// Creates a [Components] from a JSON object.
  ///
  factory Components.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });

    return _$ComponentsFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [Components] object to a JSON map.
  Map<String, dynamic> toJson() {
    final json = _$ComponentsToJson(this as _Components);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}
