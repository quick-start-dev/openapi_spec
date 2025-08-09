import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v31/server.dart';

part 'link.freezed.dart';
part 'link.g.dart';

/// A Link Object represents a possible design-time link for a response.
///
/// The presence of a link does not guarantee the caller's ability to
/// successfully invoke it, rather it provides a known relationship and
/// traversal mechanism between responses and other operations.
@freezed
abstract class Link with _$Link {
  /// Creates a [Link] object.
  @JsonSerializable(includeIfNull: false)
  const factory Link({
    /// A URI reference to an OAS operation. This field is mutually exclusive
    /// with the [operationId] field.
    String? operationRef,

    /// The name of an existing, resolvable OAS operation, as defined with
    /// a unique operationId. This field is mutually exclusive with the
    /// [operationRef] field.
    String? operationId,

    /// A map representing parameters to pass to an operation. The key is the
    /// parameter name, and the value is a constant or an expression.
    Map<String, dynamic>? parameters,

    /// A literal value or an expression to use as a request body when
    /// calling the target operation.
    dynamic requestBody,

    /// A description of the link.
    String? description,

    /// A server object to be used by the target operation.
    Server? server,
  }) = _Link;

  /// Creates a [Link] from a JSON object.
  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
