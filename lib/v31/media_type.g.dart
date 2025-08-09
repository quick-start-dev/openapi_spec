// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaType _$MediaTypeFromJson(Map<String, dynamic> json) => _MediaType(
  schema:
      json['schema'] == null
          ? null
          : Schema.fromJson(json['schema'] as Map<String, dynamic>),
  example: json['example'],
  examples: (json['examples'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Example.fromJson(e as Map<String, dynamic>)),
  ),
  encoding: (json['encoding'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Encoding.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$MediaTypeToJson(_MediaType instance) =>
    <String, dynamic>{
      if (instance.schema?.toJson() case final value?) 'schema': value,
      if (instance.example case final value?) 'example': value,
      if (instance.examples?.map((k, e) => MapEntry(k, e.toJson()))
          case final value?)
        'examples': value,
      if (instance.encoding?.map((k, e) => MapEntry(k, e.toJson()))
          case final value?)
        'encoding': value,
    };
