// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Header _$HeaderFromJson(Map<String, dynamic> json) => _Header(
  description: json['description'] as String?,
  type: json['type'] as String?,
  format: json['format'] as String?,
  schema:
      json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  ref: json[r'$ref'] as String?,
);

Map<String, dynamic> _$HeaderToJson(_Header instance) => <String, dynamic>{
  if (instance.description case final value?) 'description': value,
  if (instance.type case final value?) 'type': value,
  if (instance.format case final value?) 'format': value,
  if (instance.schema?.toJson() case final value?) 'schema': value,
  if (instance.ref case final value?) r'$ref': value,
};
