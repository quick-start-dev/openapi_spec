// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Example _$ExampleFromJson(Map<String, dynamic> json) => _Example(
  summary: json['summary'] as String?,
  description: json['description'] as String?,
  value: json['value'],
  externalValue: json['externalValue'] as String?,
);

Map<String, dynamic> _$ExampleToJson(_Example instance) => <String, dynamic>{
  if (instance.summary case final value?) 'summary': value,
  if (instance.description case final value?) 'description': value,
  if (instance.value case final value?) 'value': value,
  if (instance.externalValue case final value?) 'externalValue': value,
};
