import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v20/parameter.dart';
import 'package:openapi_spec/v20/request_body.dart';
import 'package:openapi_spec/v20/response.dart';
import 'package:openapi_spec/v20/security.dart';

part 'operation.freezed.dart';
part 'operation.g.dart';

/// Describes a single API operation on a path.
///
/// This class encapsulates all metadata for an API endpoint,
/// including parameters, request bodies, and responses.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Operation with _$Operation {
  /// Creates an [Operation] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Operation({
    /// A list of tags for API documentation.
    @Default([]) List<String> tags,

    /// A brief summary of the operation.
    String? summary,

    /// A detailed description of the operation.
    String? description,

    /// A unique string used to identify the operation.
    String? operationId,

    /// A list of parameters for the operation.
    @Default([]) List<Parameter> parameters,

    /// The request body of the operation.
    RequestBody? requestBody,

    /// The possible responses for the operation.
    @Default({}) Map<String, Response> responses,

    /// A declaration of which security schemes are required for this operation.
    @Default([]) List<SecurityRequirement> security,

    /// A list of MIME types the operation can consume (OpenAPI 2.0).
    List<String>? consumes,

    /// A list of MIME types the operation can produce (OpenAPI 2.0).
    List<String>? produces,

    /// Specifies whether the operation is deprecated.
    bool? deprecated,
  }) = _Operation;

  /// Creates an [Operation] from a JSON object.
  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);
}
