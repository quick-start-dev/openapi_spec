// Represents a security requirement object.
import 'package:meta/meta.dart';

/// Represents a security requirement object.
///
/// A declaration of which security schemes are applied to an API operation.
@immutable
class SecurityRequirement {
  /// Creates a [SecurityRequirement] object.
  const SecurityRequirement({required this.requirements});

  /// Creates a [SecurityRequirement] from a JSON object.
  factory SecurityRequirement.fromJson(Map<String, dynamic> json) {
    return SecurityRequirement(
      requirements: json.map(
        (key, value) => MapEntry(key, (value as List).cast<String>()),
      ),
    );
  }

  /// The security scheme names and their required scopes.
  final Map<String, List<String>> requirements;

  /// Converts this [SecurityRequirement] object to a JSON map.
  Map<String, dynamic> toJson() {
    return requirements;
  }
}
