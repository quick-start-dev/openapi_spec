// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Encoding _$EncodingFromJson(Map<String, dynamic> json) => _Encoding(
  contentType: json['contentType'] as String?,
  headers:
      (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Header.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  style: json['style'] as String?,
  explode: json['explode'] as bool?,
  allowReserved: json['allowReserved'] as bool?,
  ref: json[r'$ref'] as String?,
);

Map<String, dynamic> _$EncodingToJson(_Encoding instance) => <String, dynamic>{
  if (instance.contentType case final value?) 'contentType': value,
  'headers': instance.headers.map((k, e) => MapEntry(k, e.toJson())),
  if (instance.style case final value?) 'style': value,
  if (instance.explode case final value?) 'explode': value,
  if (instance.allowReserved case final value?) 'allowReserved': value,
  if (instance.ref case final value?) r'$ref': value,
};
