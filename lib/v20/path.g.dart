// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PathItem _$PathItemFromJson(Map<String, dynamic> json) => _PathItem(
  get:
      json['get'] == null
          ? null
          : Operation.fromJson(json['get'] as Map<String, dynamic>),
  post:
      json['post'] == null
          ? null
          : Operation.fromJson(json['post'] as Map<String, dynamic>),
  put:
      json['put'] == null
          ? null
          : Operation.fromJson(json['put'] as Map<String, dynamic>),
  delete:
      json['delete'] == null
          ? null
          : Operation.fromJson(json['delete'] as Map<String, dynamic>),
  patch:
      json['patch'] == null
          ? null
          : Operation.fromJson(json['patch'] as Map<String, dynamic>),
  options:
      json['options'] == null
          ? null
          : Operation.fromJson(json['options'] as Map<String, dynamic>),
  head:
      json['head'] == null
          ? null
          : Operation.fromJson(json['head'] as Map<String, dynamic>),
  trace:
      json['trace'] == null
          ? null
          : Operation.fromJson(json['trace'] as Map<String, dynamic>),
  ref: json[r'$ref'] as String?,
  parameters:
      (json['parameters'] as List<dynamic>?)
          ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
  extensions: json['extensions'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PathItemToJson(_PathItem instance) => <String, dynamic>{
  if (instance.get?.toJson() case final value?) 'get': value,
  if (instance.post?.toJson() case final value?) 'post': value,
  if (instance.put?.toJson() case final value?) 'put': value,
  if (instance.delete?.toJson() case final value?) 'delete': value,
  if (instance.patch?.toJson() case final value?) 'patch': value,
  if (instance.options?.toJson() case final value?) 'options': value,
  if (instance.head?.toJson() case final value?) 'head': value,
  if (instance.trace?.toJson() case final value?) 'trace': value,
  if (instance.ref case final value?) r'$ref': value,
  if (instance.parameters?.map((e) => e.toJson()).toList() case final value?)
    'parameters': value,
  if (instance.extensions case final value?) 'extensions': value,
};
