// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Xml _$XmlFromJson(Map<String, dynamic> json) => _Xml(
  name: json['name'] as String?,
  namespace: json['namespace'] as String?,
  prefix: json['prefix'] as String?,
  attribute: json['attribute'] as bool?,
  wrapped: json['wrapped'] as bool?,
);

Map<String, dynamic> _$XmlToJson(_Xml instance) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.namespace case final value?) 'namespace': value,
  if (instance.prefix case final value?) 'prefix': value,
  if (instance.attribute case final value?) 'attribute': value,
  if (instance.wrapped case final value?) 'wrapped': value,
};
