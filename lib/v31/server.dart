import 'package:freezed_annotation/freezed_annotation.dart';

part 'server.freezed.dart';
part 'server.g.dart';

/// An object representing a Server.
///
/// This class encapsulates the data for a server definition
/// in an OpenAPI document, including its URL, description,
/// and any variables.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class Server with _$Server {
  /// Creates a [Server] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory Server({
    /// A URL to the target host.
    required String url,

    /// A brief description of the server.
    String? description,

    /// A map of server variables for URL templating.
    Map<String, ServerVariable>? variables,
  }) = _Server;

  /// Creates a [Server] from a JSON object.
  ///
  /// This factory constructor parses a JSON map to create a [Server] instance.
  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}

/// An object representing a Server Variable for server URL template
/// substitution.
///
/// This class encapsulates the data for a server variable definition
/// in an OpenAPI document, including its possible values, default value,
/// and description.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class ServerVariable with _$ServerVariable {
  /// Creates a [ServerVariable] object.
  @JsonSerializable(includeIfNull: false)
  const factory ServerVariable({
    /// REQUIRED. The default value to use for substitution, which SHALL be sent
    /// if an alternate value is not supplied.
    @JsonKey(name: 'default') required String defaultValue,

    /// An enumeration of string values to be used if the substitution
    /// options are from a limited set. The array MUST NOT be empty.
    @JsonKey(name: 'enum') List<String>? enumValues,

    /// An optional description for the server variable.
    String? description,
  }) = _ServerVariable;
  const ServerVariable._();

  /// Creates a [ServerVariable] from a JSON object.
  factory ServerVariable.fromJson(Map<String, dynamic> json) =>
      _$ServerVariableFromJson(json);
}
