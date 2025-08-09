import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec_plus/src/util/enums.dart' show ParameterLocation;

part 'security.freezed.dart';
part 'security.g.dart';

/// Represents a Security Requirement Object in OpenAPI/Swagger 2.0.
///
/// Each [SecurityRequirement] maps a security scheme name to an optional
/// list of required scopes. For non-OAuth2 schemes, the list must be empty.
///
/// Example:
/// ```json
/// { "api_key": [] }
/// { "oauth2": ["read", "write"] }
/// ```
@immutable
class SecurityRequirement {
  /// Creates a [SecurityRequirement].
  const SecurityRequirement({required this.name, required this.scopes});

  /// Parses a `SecurityRequirement` from JSON (map with one key).
  factory SecurityRequirement.fromJson(Map<String, dynamic> json) {
    if (json.length != 1) {
      throw const FormatException(
        'SecurityRequirement must have exactly one key.',
      );
    }

    final name = json.keys.first;
    final rawScopes = json[name];

    if (rawScopes is! List) {
      throw const FormatException('Scopes must be a list of strings.');
    }

    return SecurityRequirement(
      name: name,
      scopes: List<String>.from(rawScopes),
    );
  }

  /// The name of the security scheme (must match one in `securityDefinitions`).
  final String name;

  /// List of scopes for OAuth2 (empty for other types).
  final List<String> scopes;

  /// Converts this [SecurityRequirement] to JSON.
  Map<String, dynamic> toJson() => {name: scopes};

  /// Returns a copy of this instance with updated fields.
  SecurityRequirement copyWith({String? name, List<String>? scopes}) {
    return SecurityRequirement(
      name: name ?? this.name,
      scopes: scopes ?? this.scopes,
    );
  }

  static const _equality = DeepCollectionEquality();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SecurityRequirement &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          _equality.equals(scopes, other.scopes);

  @override
  int get hashCode => name.hashCode ^ _equality.hash(scopes);
}

/// Represents a single security scheme object for OpenAPI 2.0.
@Freezed(copyWith: true, fromJson: true, toJson: true, equal: true)
abstract class SecurityScheme with _$SecurityScheme {
  /// Creates a [SecurityScheme] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory SecurityScheme({
    /// The type of the security scheme.
    required String type,

    /// A short description of the security scheme.
    String? description,

    /// The name of the header, query, or cookie parameter to be used.
    String? name,

    /// The location of the API key.
    @JsonKey(name: 'in') ParameterLocation? location,

    /// The name of the HTTP Authorization scheme to be used in
    /// the Authorization header.
    String? scheme,

    /// A hint to the client to identify the bearer token scheme.
    String? bearerFormat,

    /// The flow used by the OAuth2 security scheme.
    String? flow,

    /// The authorization URL to be used for this flow.
    String? authorizationUrl,

    /// The available scopes for the OAuth2 flow.
    Map<String, String>? scopes,
  }) = _SecurityScheme;

  /// Creates a [SecurityScheme] from a JSON object.
  factory SecurityScheme.fromJson(Map<String, dynamic> json) =>
      _$SecuritySchemeFromJson(json);
}
