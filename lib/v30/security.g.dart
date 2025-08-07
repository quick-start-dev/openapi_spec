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
      flow: json['flow'] as String?,
      authorizationUrl: json['authorizationUrl'] as String?,
      scopes: (json['scopes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
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
  if (instance.flow case final value?) 'flow': value,
  if (instance.authorizationUrl case final value?) 'authorizationUrl': value,
  if (instance.scopes case final value?) 'scopes': value,
};

const _$ParameterLocationEnumMap = {
  ParameterLocation.query: 'query',
  ParameterLocation.header: 'header',
  ParameterLocation.path: 'path',
  ParameterLocation.cookie: 'cookie',
  ParameterLocation.body: 'body',
  ParameterLocation.formData: 'formData',
};
