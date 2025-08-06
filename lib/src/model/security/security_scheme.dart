import 'package:meta/meta.dart';
import 'package:openapi_spec/src/util/enums.dart';

/// Represents a single security scheme object.
@immutable
class SecurityScheme {
  /// Creates a [SecurityScheme] object.
  const SecurityScheme({
    required this.type,
    this.description,
    this.name,
    this.location,
    this.scheme,
    this.bearerFormat,
    this.flow,
    this.authorizationUrl,
    this.scopes,
    this.flows,
  });

  /// Creates a [SecurityScheme] from a JSON object.
  factory SecurityScheme.fromJson(Map<String, dynamic> json) {
    return SecurityScheme(
      type: json['type'] as String,
      description: json['description'] as String?,
      name: json['name'] as String?,
      location:
          json['in'] != null
              ? ParameterLocation.fromString(json['in'] as String)
              : null,
      scheme: json['scheme'] as String?,
      bearerFormat: json['bearerFormat'] as String?,
      flow: json['flow'] as String?,
      authorizationUrl: json['authorizationUrl'] as String?,
      scopes: (json['scopes'] as Map?)?.map(
        (k, v) => MapEntry(k as String, v as String),
      ),
      flows:
          json['flows'] != null
              ? OAuthFlows.fromJson(json['flows'] as Map<String, dynamic>)
              : null,
    );
  }

  /// The type of the security scheme.
  ///
  /// Valid values are "apiKey", "http", "oauth2", and "openIdConnect".
  final String type;

  /// A short description of the security scheme.
  final String? description;

  /// The name of the header, query, or cookie parameter to be used.
  final String? name;

  /// The location of the API key.
  ///
  /// This field is only relevant for `apiKey` type.
  final ParameterLocation? location;

  /// The name of the HTTP Authorization scheme to be used in
  /// the Authorization header.
  ///
  /// This field is only relevant for `http` type.
  final String? scheme;

  /// A hint to the client to identify the bearer token scheme.
  ///
  /// This is only applicable for `http` type with a `bearer` scheme.
  final String? bearerFormat;

  /// The flow used by the OAuth2 security scheme.
  ///
  /// This is applicable only for OpenAPI 2.0.
  final String? flow;

  /// The authorization URL to be used for this flow.
  ///
  /// This is applicable only for OpenAPI 2.0.
  final String? authorizationUrl;

  /// The available scopes for the OAuth2 flow.
  ///
  /// This is applicable only for OpenAPI 2.0.
  final Map<String, String>? scopes;

  /// The available OAuth2 flows for this security scheme.
  ///
  /// This is applicable for OpenAPI 3.0 and later.
  final OAuthFlows? flows;

  /// Converts this [SecurityScheme] object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      if (description != null) 'description': description,
      if (name != null) 'name': name,
      if (location != null) 'in': location!.name,
      if (scheme != null) 'scheme': scheme,
      if (bearerFormat != null) 'bearerFormat': bearerFormat,
      if (flow != null) 'flow': flow,
      if (authorizationUrl != null) 'authorizationUrl': authorizationUrl,
      if (scopes != null && scopes!.isNotEmpty) 'scopes': scopes,
      if (flows != null) 'flows': flows!.toJson(),
    };
  }
}

/// Represents the OAuth2 flows object (OpenAPI 3.0+).
class OAuthFlows {
  /// Creates an [OAuthFlows] object.
  const OAuthFlows({
    this.implicit,
    this.password,
    this.clientCredentials,
    this.authorizationCode,
  });

  /// Creates an [OAuthFlows] from a JSON object.
  factory OAuthFlows.fromJson(Map<String, dynamic> json) {
    return OAuthFlows(
      implicit:
          json['implicit'] != null
              ? OAuthFlow.fromJson(json['implicit'] as Map<String, dynamic>)
              : null,
      password:
          json['password'] != null
              ? OAuthFlow.fromJson(json['password'] as Map<String, dynamic>)
              : null,
      clientCredentials:
          json['clientCredentials'] != null
              ? OAuthFlow.fromJson(
                json['clientCredentials'] as Map<String, dynamic>,
              )
              : null,
      authorizationCode:
          json['authorizationCode'] != null
              ? OAuthFlow.fromJson(
                json['authorizationCode'] as Map<String, dynamic>,
              )
              : null,
    );
  }

  /// Configuration for the implicit flow.
  final OAuthFlow? implicit;

  /// Configuration for the password flow.
  final OAuthFlow? password;

  /// Configuration for the client credentials flow.
  final OAuthFlow? clientCredentials;

  /// Configuration for the authorization code flow.
  final OAuthFlow? authorizationCode;

  /// Converts this [OAuthFlows] object to a JSON map.
  Map<String, dynamic> toJson() => {
    if (implicit != null) 'implicit': implicit!.toJson(),
    if (password != null) 'password': password!.toJson(),
    if (clientCredentials != null)
      'clientCredentials': clientCredentials!.toJson(),
    if (authorizationCode != null)
      'authorizationCode': authorizationCode!.toJson(),
  };
}

/// Represents a single OAuth flow configuration.
class OAuthFlow {
  /// Creates an [OAuthFlow] object.
  const OAuthFlow({
    this.authorizationUrl,
    this.tokenUrl,
    this.refreshUrl,
    this.scopes = const {},
  });

  /// Creates an [OAuthFlow] from a JSON object.
  factory OAuthFlow.fromJson(Map<String, dynamic> json) {
    return OAuthFlow(
      authorizationUrl: json['authorizationUrl'] as String?,
      tokenUrl: json['tokenUrl'] as String?,
      refreshUrl: json['refreshUrl'] as String?,
      scopes: (json['scopes'] as Map? ?? {}).cast<String, String>(),
    );
  }

  /// The authorization URL to be used for this flow.
  final String? authorizationUrl;

  /// The token URL to be used for this flow.
  final String? tokenUrl;

  /// The URL to be used for refreshing the access token.
  final String? refreshUrl;

  /// The available scopes for the OAuth2 flow.
  final Map<String, String> scopes;

  /// Converts this [OAuthFlow] object to a JSON map.
  Map<String, dynamic> toJson() => {
    if (authorizationUrl != null) 'authorizationUrl': authorizationUrl,
    if (tokenUrl != null) 'tokenUrl': tokenUrl,
    if (refreshUrl != null) 'refreshUrl': refreshUrl,
    if (scopes.isNotEmpty) 'scopes': scopes,
  };
}
