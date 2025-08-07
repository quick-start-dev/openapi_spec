// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAPI _$OpenAPIFromJson(Map<String, dynamic> json) => _OpenAPI(
  openapi: json['openapi'] as String? ?? '3.0.0',
  info:
      json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
  servers:
      (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  paths:
      (json['paths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  components:
      json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
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
  extensions: json['extensions'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OpenAPIToJson(_OpenAPI instance) => <String, dynamic>{
  'openapi': instance.openapi,
  if (instance.info?.toJson() case final value?) 'info': value,
  'servers': instance.servers.map((e) => e.toJson()).toList(),
  'paths': instance.paths.map((k, e) => MapEntry(k, e.toJson())),
  if (instance.components?.toJson() case final value?) 'components': value,
  'security': instance.security.map((e) => e.toJson()).toList(),
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  if (instance.externalDocs?.toJson() case final value?) 'externalDocs': value,
  if (instance.extensions case final value?) 'extensions': value,
};
