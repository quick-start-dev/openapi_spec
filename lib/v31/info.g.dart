// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Info _$InfoFromJson(Map<String, dynamic> json) => _Info(
  title: json['title'] as String,
  version: json['version'] as String,
  description: json['description'] as String?,
  termsOfService: json['termsOfService'] as String?,
  contact:
      json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
  license:
      json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
  summary: json['summary'] as String?,
);

Map<String, dynamic> _$InfoToJson(_Info instance) => <String, dynamic>{
  'title': instance.title,
  'version': instance.version,
  if (instance.description case final value?) 'description': value,
  if (instance.termsOfService case final value?) 'termsOfService': value,
  if (instance.contact case final value?) 'contact': value,
  if (instance.license case final value?) 'license': value,
  if (instance.summary case final value?) 'summary': value,
};
