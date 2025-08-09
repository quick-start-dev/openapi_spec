// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Server _$ServerFromJson(Map<String, dynamic> json) => _Server(
  url: json['url'] as String,
  description: json['description'] as String?,
  variables: (json['variables'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, ServerVariable.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$ServerToJson(_Server instance) => <String, dynamic>{
  'url': instance.url,
  if (instance.description case final value?) 'description': value,
  if (instance.variables?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'variables': value,
};

_ServerVariable _$ServerVariableFromJson(Map<String, dynamic> json) =>
    _ServerVariable(
      defaultValue: json['default'] as String,
      enumValues:
          (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ServerVariableToJson(_ServerVariable instance) =>
    <String, dynamic>{
      'default': instance.defaultValue,
      if (instance.enumValues case final value?) 'enum': value,
      if (instance.description case final value?) 'description': value,
    };
