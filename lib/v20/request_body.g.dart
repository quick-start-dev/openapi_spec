// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestBody _$RequestBodyFromJson(Map<String, dynamic> json) => _RequestBody(
  description: json['description'] as String?,
  $required: json['required'] as bool?,
  content:
      (json['content'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MediaType.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$RequestBodyToJson(_RequestBody instance) =>
    <String, dynamic>{
      if (instance.description case final value?) 'description': value,
      if (instance.$required case final value?) 'required': value,
      'content': instance.content.map((k, e) => MapEntry(k, e.toJson())),
    };
