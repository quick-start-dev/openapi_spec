import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/v31/external_docs.dart';
import 'package:openapi_spec/v31/parameter.dart';
import 'package:openapi_spec/v31/request_body.dart';
import 'package:openapi_spec/v31/response.dart';
import 'package:openapi_spec/v31/security.dart';
import 'package:openapi_spec/v31/server.dart';

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

    /// A short summary of what the operation does.
    String? summary,

    /// A verbose explanation of the operation behavior.
    /// CommonMark syntax MAY be used for rich text representation.
    String? description,

    /// Additional external documentation for this operation.
    ExternalDocs? externalDocs,

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

    /// Specifies whether the operation is deprecated.
    bool? deprecated,

    /// An alternative servers array to service this operation.
    /// If a servers array is specified at the Path Item Object or
    /// OpenAPI Object level, it will be overridden by this value.
    List<Server>? servers,
  }) = _Operation;

  /// Creates an [Operation] from a JSON object.
  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);
}
