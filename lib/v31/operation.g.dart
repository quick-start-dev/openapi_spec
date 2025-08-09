// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Operation _$OperationFromJson(Map<String, dynamic> json) => _Operation(
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  summary: json['summary'] as String?,
  description: json['description'] as String?,
  externalDocs:
      json['externalDocs'] == null
          ? null
          : ExternalDocs.fromJson(json['externalDocs'] as Map<String, dynamic>),
  operationId: json['operationId'] as String?,
  parameters:
      (json['parameters'] as List<dynamic>?)
          ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  requestBody:
      json['requestBody'] == null
          ? null
          : RequestBody.fromJson(json['requestBody'] as Map<String, dynamic>),
  responses:
      (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  security:
      (json['security'] as List<dynamic>?)
          ?.map((e) => SecurityRequirement.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  deprecated: json['deprecated'] as bool?,
  servers:
      (json['servers'] as List<dynamic>?)
          ?.map((e) => Server.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$OperationToJson(
  _Operation instance,
) => <String, dynamic>{
  'tags': instance.tags,
  if (instance.summary case final value?) 'summary': value,
  if (instance.description case final value?) 'description': value,
  if (instance.externalDocs?.toJson() case final value?) 'externalDocs': value,
  if (instance.operationId case final value?) 'operationId': value,
  'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  if (instance.requestBody?.toJson() case final value?) 'requestBody': value,
  'responses': instance.responses.map((k, e) => MapEntry(k, e.toJson())),
  'security': instance.security.map((e) => e.toJson()).toList(),
  if (instance.deprecated case final value?) 'deprecated': value,
  if (instance.servers?.map((e) => e.toJson()).toList() case final value?)
    'servers': value,
};
