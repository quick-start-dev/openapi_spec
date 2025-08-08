// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SecurityScheme _$SecuritySchemeFromJson(Map<String, dynamic> json) =>
    _SecurityScheme(
      type: json['type'] as String,
      description: json['description'] as String?,
      name: json['name'] as String?,
      location: $enumDecodeNullable(_$ParameterLocationEnumMap, json['in']),
      scheme: json['scheme'] as String?,
      bearerFormat: json['bearerFormat'] as String?,
      flows:
          json['flows'] == null
              ? null
              : OAuthFlows.fromJson(json['flows'] as Map<String, dynamic>),
      openIdConnectUrl: json['openIdConnectUrl'] as String?,
    );

Map<String, dynamic> _$SecuritySchemeToJson(
  _SecurityScheme instance,
) => <String, dynamic>{
  'type': instance.type,
  if (instance.description case final value?) 'description': value,
  if (instance.name case final value?) 'name': value,
  if (_$ParameterLocationEnumMap[instance.location] case final value?)
    'in': value,
  if (instance.scheme case final value?) 'scheme': value,
  if (instance.bearerFormat case final value?) 'bearerFormat': value,
  if (instance.flows?.toJson() case final value?) 'flows': value,
  if (instance.openIdConnectUrl case final value?) 'openIdConnectUrl': value,
};

const _$ParameterLocationEnumMap = {
  ParameterLocation.query: 'query',
  ParameterLocation.header: 'header',
  ParameterLocation.path: 'path',
  ParameterLocation.cookie: 'cookie',
  ParameterLocation.body: 'body',
  ParameterLocation.formData: 'formData',
};

_OAuthFlow _$OAuthFlowFromJson(Map<String, dynamic> json) => _OAuthFlow(
  scopes: Map<String, String>.from(json['scopes'] as Map),
  authorizationUrl: json['authorizationUrl'] as String?,
  tokenUrl: json['tokenUrl'] as String?,
  refreshUrl: json['refreshUrl'] as String?,
);

Map<String, dynamic> _$OAuthFlowToJson(
  _OAuthFlow instance,
) => <String, dynamic>{
  'scopes': instance.scopes,
  if (instance.authorizationUrl case final value?) 'authorizationUrl': value,
  if (instance.tokenUrl case final value?) 'tokenUrl': value,
  if (instance.refreshUrl case final value?) 'refreshUrl': value,
};

_OAuthFlows _$OAuthFlowsFromJson(Map<String, dynamic> json) => _OAuthFlows(
  implicit:
      json['implicit'] == null
          ? null
          : OAuthFlow.fromJson(json['implicit'] as Map<String, dynamic>),
  password:
      json['password'] == null
          ? null
          : OAuthFlow.fromJson(json['password'] as Map<String, dynamic>),
  clientCredentials:
      json['clientCredentials'] == null
          ? null
          : OAuthFlow.fromJson(
            json['clientCredentials'] as Map<String, dynamic>,
          ),
  authorizationCode:
      json['authorizationCode'] == null
          ? null
          : OAuthFlow.fromJson(
            json['authorizationCode'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$OAuthFlowsToJson(_OAuthFlows instance) =>
    <String, dynamic>{
      if (instance.implicit?.toJson() case final value?) 'implicit': value,
      if (instance.password?.toJson() case final value?) 'password': value,
      if (instance.clientCredentials?.toJson() case final value?)
        'clientCredentials': value,
      if (instance.authorizationCode?.toJson() case final value?)
        'authorizationCode': value,
    };
