// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAPI _$OpenAPIFromJson(Map<String, dynamic> json) => _OpenAPI(
  info: Info.fromJson(json['info'] as Map<String, dynamic>),
  openapi: json['openapi'] as String,
  servers:
      (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
  paths:
      (json['paths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  components:
      json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
  jsonSchemaDialect: json['jsonSchemaDialect'] as String?,
  security:
      (json['security'] as List<dynamic>?)
          ?.map((e) => SecurityRequirement.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  externalDocs:
      json['externalDocs'] == null
          ? null
          : ExternalDocs.fromJson(json['externalDocs'] as Map<String, dynamic>),
  webhooks:
      (json['webhooks'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  extensions: json['extensions'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OpenAPIToJson(_OpenAPI instance) => <String, dynamic>{
  'info': instance.info.toJson(),
  'openapi': instance.openapi,
  if (instance.servers?.map((e) => e.toJson()).toList() case final value?)
    'servers': value,
  'paths': instance.paths.map((k, e) => MapEntry(k, e.toJson())),
  if (instance.components?.toJson() case final value?) 'components': value,
  if (instance.jsonSchemaDialect case final value?) 'jsonSchemaDialect': value,
  'security': instance.security.map((e) => e.toJson()).toList(),
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  if (instance.externalDocs?.toJson() case final value?) 'externalDocs': value,
  'webhooks': instance.webhooks.map((k, e) => MapEntry(k, e.toJson())),
  if (instance.extensions case final value?) 'extensions': value,
};
