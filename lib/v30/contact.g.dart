// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  name: json['name'] as String?,
  url: json['url'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.url case final value?) 'url': value,
  if (instance.email case final value?) 'email': value,
};
