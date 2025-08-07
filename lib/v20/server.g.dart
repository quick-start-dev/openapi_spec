// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Server _$ServerFromJson(Map<String, dynamic> json) => _Server(
  url: json['url'] as String,
  description: json['description'] as String?,
  variables: json['variables'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ServerToJson(_Server instance) => <String, dynamic>{
  'url': instance.url,
  if (instance.description case final value?) 'description': value,
  if (instance.variables case final value?) 'variables': value,
};
