// Represents a server object.
import 'package:meta/meta.dart';

/// An object representing a Server.
///
/// This class encapsulates the data for a server definition
/// in an OpenAPI document, including its URL, description,
/// and any variables.
@immutable
class Server {
  /// Creates a [Server] object.
  const Server({required this.url, this.description, this.variables});

  /// Creates a [Server] from a JSON object.
  ///
  /// This factory constructor parses a JSON map to create a [Server] instance.
  factory Server.fromJson(Map<String, dynamic> json) {
    return Server(
      url: json['url'] as String,
      description: json['description'] as String?,
      variables: json['variables'] as Map<String, dynamic>?,
    );
  }

  /// A URL to the target host.
  final String url;

  /// A brief description of the server.
  final String? description;

  /// A map of server variables for URL templating.
  final Map<String, dynamic>? variables;

  /// Converts this [Server] object to a JSON map.
  ///
  /// This is useful for serializing the object back to a format
  /// that can be included in an OpenAPI document.
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      if (description != null) 'description': description,
      if (variables != null) 'variables': variables,
    };
  }
}
