// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Header _$HeaderFromJson(Map<String, dynamic> json) => _Header(
  description: json['description'] as String?,
  required: json['required'] as bool?,
  deprecated: json['deprecated'] as bool?,
  style: json['style'] as String?,
  explode: json['explode'] as bool?,
  schema:
      json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  example: json['example'],
  examples: (json['examples'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Example.fromJson(e as Map<String, dynamic>)),
  ),
  content: (json['content'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
  ),
  ref: json[r'$ref'] as String?,
);

Map<String, dynamic> _$HeaderToJson(_Header instance) => <String, dynamic>{
  if (instance.description case final value?) 'description': value,
  if (instance.required case final value?) 'required': value,
  if (instance.deprecated case final value?) 'deprecated': value,
  if (instance.style case final value?) 'style': value,
  if (instance.explode case final value?) 'explode': value,
  if (instance.schema?.toJson() case final value?) 'schema': value,
  if (instance.example case final value?) 'example': value,
  if (instance.examples?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'examples': value,
  if (instance.content?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'content': value,
  if (instance.ref case final value?) r'$ref': value,
};
