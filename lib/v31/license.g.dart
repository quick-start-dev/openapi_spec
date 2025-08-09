// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_License _$LicenseFromJson(Map<String, dynamic> json) => _License(
  name: json['name'] as String,
  identifier: json['identifier'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$LicenseToJson(_License instance) => <String, dynamic>{
  'name': instance.name,
  'identifier': instance.identifier,
  if (instance.url case final value?) 'url': value,
};
