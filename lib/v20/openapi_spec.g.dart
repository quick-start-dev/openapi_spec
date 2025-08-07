// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiSpec _$OpenApiSpecFromJson(Map<String, dynamic> json) => _OpenApiSpec(
  swagger: json['swagger'] as String? ?? '2.0',
  info:
      json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
  host: json['host'] as String?,
  basePath: json['basePath'] as String?,
  schemes:
      (json['schemes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  consumes:
      (json['consumes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  produces:
      (json['produces'] as List<dynamic>?)?.map((e) => e as String).toList(),
  paths:
      (json['paths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, PathItem.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  definitions:
      (json['definitions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  securityDefinitions:
      (json['securityDefinitions'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, SecurityScheme.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  security:
      (json['security'] as List<dynamic>?)
          ?.map((e) => SecurityRequirement.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  externalDocs:
      json['externalDocs'] == null
          ? null
          : ExternalDocs.fromJson(json['externalDocs'] as Map<String, dynamic>),
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  extensions: json['extensions'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OpenApiSpecToJson(
  _OpenApiSpec instance,
) => <String, dynamic>{
  'swagger': instance.swagger,
  if (instance.info?.toJson() case final value?) 'info': value,
  if (instance.host case final value?) 'host': value,
  if (instance.basePath case final value?) 'basePath': value,
  if (instance.schemes case final value?) 'schemes': value,
  if (instance.consumes case final value?) 'consumes': value,
  if (instance.produces case final value?) 'produces': value,
  'paths': instance.paths.map((k, e) => MapEntry(k, e.toJson())),
  'definitions': instance.definitions.map((k, e) => MapEntry(k, e.toJson())),
  'securityDefinitions': instance.securityDefinitions.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'security': instance.security.map((e) => e.toJson()).toList(),
  if (instance.externalDocs?.toJson() case final value?) 'externalDocs': value,
  'tags': instance.tags.map((e) => e.toJson()).toList(),
  if (instance.extensions case final value?) 'extensions': value,
};
