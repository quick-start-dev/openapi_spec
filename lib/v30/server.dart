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
    Map<String, dynamic>? variables,
  }) = _Server;

  /// Creates a [Server] from a JSON object.
  ///
  /// This factory constructor parses a JSON map to create a [Server] instance.
  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);
}
