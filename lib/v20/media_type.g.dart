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
);

Map<String, dynamic> _$MediaTypeToJson(_MediaType instance) =>
    <String, dynamic>{
      if (instance.schema?.toJson() case final value?) 'schema': value,
    };
