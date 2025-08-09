// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Components _$ComponentsFromJson(Map<String, dynamic> json) => _Components(
  schemas: (json['schemas'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
  ),
  responses: (json['responses'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
  ),
  parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Parameter.fromJson(e as Map<String, dynamic>)),
  ),
  requestBodies: (json['requestBodies'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, RequestBody.fromJson(e as Map<String, dynamic>)),
  ),
  securitySchemes: (json['securitySchemes'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, SecurityScheme.fromJson(e as Map<String, dynamic>)),
  ),
  headers: (json['headers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Header.fromJson(e as Map<String, dynamic>)),
  ),
  links: (json['links'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Link.fromJson(e as Map<String, dynamic>)),
  ),
  callbacks: (json['callbacks'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Callback.fromJson(e as Map<String, dynamic>)),
  ),
  examples: (json['examples'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Example.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$ComponentsToJson(
  _Components instance,
) => <String, dynamic>{
  if (instance.schemas?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'schemas': value,
  if (instance.responses?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'responses': value,
  if (instance.parameters?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'parameters': value,
  if (instance.requestBodies?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'requestBodies': value,
  if (instance.securitySchemes?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'securitySchemes': value,
  if (instance.headers?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'headers': value,
  if (instance.links?.map((k, e) => MapEntry(k, e.toJson())) case final value?)
    'links': value,
  if (instance.callbacks?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'callbacks': value,
  if (instance.examples?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'examples': value,
};
