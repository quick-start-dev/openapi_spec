// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
  operationRef: json['operationRef'] as String?,
  operationId: json['operationId'] as String?,
  parameters: json['parameters'] as Map<String, dynamic>?,
  requestBody: json['requestBody'],
  description: json['description'] as String?,
  server:
      json['server'] == null
          ? null
          : Server.fromJson(json['server'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
  if (instance.operationRef case final value?) 'operationRef': value,
  if (instance.operationId case final value?) 'operationId': value,
  if (instance.parameters case final value?) 'parameters': value,
  if (instance.requestBody case final value?) 'requestBody': value,
  if (instance.description case final value?) 'description': value,
  if (instance.server case final value?) 'server': value,
};
