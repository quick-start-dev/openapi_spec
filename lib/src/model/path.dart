import 'package:meta/meta.dart';
import 'package:openapi_spec/src/model/operation.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// Describes the operations available on a single path.
///
/// This class represents a path definition in an OpenAPI document,
/// which contains one or more HTTP operations.
@immutable
class Path {
  /// Creates a [Path] object.
  const Path({
    required this.version,
    this.get,
    this.post,
    this.put,
    this.delete,
    this.patch,
  });

  /// Creates a [Path] from a JSON object.
  factory Path.fromJson(
    Map<String, dynamic> json, {
    required OpenApiVersion version,
  }) {
    return Path(
      version: version,
      get:
          json['get'] != null
              ? Operation.fromJson(
                json['get'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      post:
          json['post'] != null
              ? Operation.fromJson(
                json['post'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      put:
          json['put'] != null
              ? Operation.fromJson(
                json['put'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      delete:
          json['delete'] != null
              ? Operation.fromJson(
                json['delete'] as Map<String, dynamic>,
                version: version,
              )
              : null,
      patch:
          json['patch'] != null
              ? Operation.fromJson(
                json['patch'] as Map<String, dynamic>,
                version: version,
              )
              : null,
    );
  }

  /// The OpenAPI version associated with this path.
  final OpenApiVersion version;

  /// The definition for the `GET` operation.
  final Operation? get;

  /// The definition for the `POST` operation.
  final Operation? post;

  /// The definition for the `PUT` operation.
  final Operation? put;

  /// The definition for the `DELETE` operation.
  final Operation? delete;

  /// The definition for the `PATCH` operation.
  final Operation? patch;

  /// Converts this [Path] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      if (get != null) 'get': get!.toJson(),
      if (post != null) 'post': post!.toJson(),
      if (put != null) 'put': put!.toJson(),
      if (delete != null) 'delete': delete!.toJson(),
      if (patch != null) 'patch': patch!.toJson(),
    };
  }
}
