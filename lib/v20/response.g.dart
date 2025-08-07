// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Response _$ResponseFromJson(Map<String, dynamic> json) => _Response(
  description: json['description'] as String,
  schema:
      json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  content: (json['content'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
  ),
  headers: (json['headers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Header.fromJson(e as Map<String, dynamic>)),
  ),
  ref: json[r'$ref'] as String?,
);

Map<String, dynamic> _$ResponseToJson(_Response instance) => <String, dynamic>{
  'description': instance.description,
  if (instance.schema?.toJson() case final value?) 'schema': value,
  if (instance.content?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'content': value,
  if (instance.headers?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'headers': value,
  if (instance.ref case final value?) r'$ref': value,
};
