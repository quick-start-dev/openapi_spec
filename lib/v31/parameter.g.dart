// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Parameter _$ParameterFromJson(Map<String, dynamic> json) => _Parameter(
  ref: json[r'$ref'] as String?,
  name: json['name'] as String?,
  location: $enumDecodeNullable(_$ParameterLocationEnumMap, json['in']),
  description: json['description'] as String?,
  required: json['required'] as bool?,
  deprecated: json['deprecated'] as bool?,
  schema:
      json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  type: json['type'] as String?,
  format: json['format'] as String?,
  collectionFormat: json['collectionFormat'] as String?,
  items:
      json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
  maximum: json['maximum'] as num?,
  minimum: json['minimum'] as num?,
  explode: json['explode'] as bool?,
  example: json['example'],
);

Map<String, dynamic> _$ParameterToJson(
  _Parameter instance,
) => <String, dynamic>{
  if (instance.ref case final value?) r'$ref': value,
  if (instance.name case final value?) 'name': value,
  if (_$ParameterLocationEnumMap[instance.location] case final value?)
    'in': value,
  if (instance.description case final value?) 'description': value,
  if (instance.required case final value?) 'required': value,
  if (instance.deprecated case final value?) 'deprecated': value,
  if (instance.schema?.toJson() case final value?) 'schema': value,
  if (instance.type case final value?) 'type': value,
  if (instance.format case final value?) 'format': value,
  if (instance.collectionFormat case final value?) 'collectionFormat': value,
  if (instance.items?.toJson() case final value?) 'items': value,
  if (instance.maximum case final value?) 'maximum': value,
  if (instance.minimum case final value?) 'minimum': value,
  if (instance.explode case final value?) 'explode': value,
  if (instance.example case final value?) 'example': value,
};

const _$ParameterLocationEnumMap = {
  ParameterLocation.query: 'query',
  ParameterLocation.header: 'header',
  ParameterLocation.path: 'path',
  ParameterLocation.cookie: 'cookie',
  ParameterLocation.body: 'body',
  ParameterLocation.formData: 'formData',
};
