import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi_spec/src/util/enums.dart' show ParameterLocation;

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

/// Defines a security scheme that can be used by the operations.
///
/// This class is for OpenAPI 3.0.
@Freezed(copyWith: true, fromJson: true, toJson: false, equal: true)
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

    /// The name of the HTTP Authentication scheme.
    String? scheme,

    /// A hint to the client to identify the bearer token format.
    String? bearerFormat,

    /// Configuration information for the flow types supported.
    OAuthFlows? flows,

    /// Well-known URL to discover the OpenID Connect provider metadata.
    String? openIdConnectUrl,

    /// Vendor extensions (keys like `x-*`).
    @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)
    Map<String, dynamic>? extensions,
  }) = _SecurityScheme;
  const SecurityScheme._();

  /// Creates a [SecurityScheme] from a JSON object.
  factory SecurityScheme.fromJson(Map<String, dynamic> json) {
    final extensions = <String, dynamic>{};
    json.forEach((key, value) {
      if (key.startsWith('x-')) {
        extensions[key] = value;
      }
    });

    return _$SecuritySchemeFromJson(json).copyWith(extensions: extensions);
  }

  /// Converts this [SecurityScheme] object to a JSON map.
  Map<String, dynamic> toJson() {
    final json = _$SecuritySchemeToJson(this as _SecurityScheme);
    if (extensions != null) {
      json.addAll(extensions!);
    }
    return json;
  }
}

/// Represents the configuration details for a supported OAuth Flow.
@freezed
abstract class OAuthFlow with _$OAuthFlow {
  /// Creates an [OAuthFlow] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory OAuthFlow({
    /// The available scopes for the OAuth2 security scheme.
    required Map<String, String> scopes,

    /// The authorization URL to be used for this flow.
    String? authorizationUrl,

    /// The token URL to be used for this flow.
    String? tokenUrl,

    /// The URL to be used for obtaining refresh tokens.
    String? refreshUrl,
  }) = _OAuthFlow;

  /// Creates an [OAuthFlow] from a JSON object.
  factory OAuthFlow.fromJson(Map<String, dynamic> json) =>
      _$OAuthFlowFromJson(json);
}

/// Allows configuration of the supported OAuth Flows.
@freezed
abstract class OAuthFlows with _$OAuthFlows {
  /// Creates an [OAuthFlows] object.
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory OAuthFlows({
    /// Configuration for the OAuth Implicit flow.
    OAuthFlow? implicit,

    /// Configuration for the OAuth Resource Owner Password flow.
    OAuthFlow? password,

    /// Configuration for the OAuth Client Credentials flow.
    OAuthFlow? clientCredentials,

    /// Configuration for the OAuth Authorization Code flow.
    OAuthFlow? authorizationCode,
  }) = _OAuthFlows;

  /// Creates an [OAuthFlows] from a JSON object.
  factory OAuthFlows.fromJson(Map<String, dynamic> json) =>
      _$OAuthFlowsFromJson(json);
}
