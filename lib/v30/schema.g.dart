// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schema _$SchemaFromJson(Map<String, dynamic> json) => _Schema(
  ref: json[r'$ref'] as String?,
  type: json['type'] as String?,
  format: json['format'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  $required:
      (json['required'] as List<dynamic>?)?.map((e) => e as String).toList(),
  properties: (json['properties'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
  ),
  items:
      json['items'] == null
          ? null
          : Schema.fromJson(json['items'] as Map<String, dynamic>),
  example: json['example'],
  enumValues: json['enum'] as List<dynamic>?,
  $default: json['default'],
  xml:
      json['xml'] == null
          ? null
          : Xml.fromJson(json['xml'] as Map<String, dynamic>),
  maximum: json['maximum'] as num?,
  exclusiveMaximum: json['exclusiveMaximum'] as num?,
  minimum: json['minimum'] as num?,
  exclusiveMinimum: json['exclusiveMinimum'] as num?,
  readOnly: json['readOnly'] as bool?,
  writeOnly: json['writeOnly'] as bool?,
  externalDocs:
      json['externalDocs'] == null
          ? null
          : ExternalDocs.fromJson(json['externalDocs'] as Map<String, dynamic>),
  discriminator:
      json['discriminator'] == null
          ? null
          : Discriminator.fromJson(
            json['discriminator'] as Map<String, dynamic>,
          ),
  allOf:
      (json['allOf'] as List<dynamic>?)
          ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
          .toList(),
  oneOf:
      (json['oneOf'] as List<dynamic>?)
          ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
          .toList(),
  anyOf:
      (json['anyOf'] as List<dynamic>?)
          ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
          .toList(),
  not:
      json['not'] == null
          ? null
          : Schema.fromJson(json['not'] as Map<String, dynamic>),
  nullable: json['nullable'] as bool?,
  allowEmptyValue: json['allowEmptyValue'] as bool?,
  collectionFormat: json['collectionFormat'] as String?,
  maxLength: (json['maxLength'] as num?)?.toInt(),
  minLength: (json['minLength'] as num?)?.toInt(),
  maxItems: (json['maxItems'] as num?)?.toInt(),
  minItems: (json['minItems'] as num?)?.toInt(),
  pattern: json['pattern'] as String?,
  uniqueItems: json['uniqueItems'] as bool?,
  maxProperties: (json['maxProperties'] as num?)?.toInt(),
  minProperties: (json['minProperties'] as num?)?.toInt(),
  multipleOf: json['multipleOf'] as num?,
  $deprecated: json['deprecated'] as bool?,
);

Map<String, dynamic> _$SchemaToJson(_Schema instance) => <String, dynamic>{
  if (instance.ref case final value?) r'$ref': value,
  if (instance.type case final value?) 'type': value,
  if (instance.format case final value?) 'format': value,
  if (instance.title case final value?) 'title': value,
  if (instance.description case final value?) 'description': value,
  if (instance.$required case final value?) 'required': value,
  if (instance.properties?.map((k, e) => MapEntry(k, e.toJson()))
      case final value?)
    'properties': value,
  if (instance.items?.toJson() case final value?) 'items': value,
  if (instance.example case final value?) 'example': value,
  if (instance.enumValues case final value?) 'enum': value,
  if (instance.$default case final value?) 'default': value,
  if (instance.xml?.toJson() case final value?) 'xml': value,
  if (instance.maximum case final value?) 'maximum': value,
  if (instance.exclusiveMaximum case final value?) 'exclusiveMaximum': value,
  if (instance.minimum case final value?) 'minimum': value,
  if (instance.exclusiveMinimum case final value?) 'exclusiveMinimum': value,
  if (instance.readOnly case final value?) 'readOnly': value,
  if (instance.writeOnly case final value?) 'writeOnly': value,
  if (instance.externalDocs?.toJson() case final value?) 'externalDocs': value,
  if (instance.discriminator?.toJson() case final value?)
    'discriminator': value,
  if (instance.allOf?.map((e) => e.toJson()).toList() case final value?)
    'allOf': value,
  if (instance.oneOf?.map((e) => e.toJson()).toList() case final value?)
    'oneOf': value,
  if (instance.anyOf?.map((e) => e.toJson()).toList() case final value?)
    'anyOf': value,
  if (instance.not?.toJson() case final value?) 'not': value,
  if (instance.nullable case final value?) 'nullable': value,
  if (instance.allowEmptyValue case final value?) 'allowEmptyValue': value,
  if (instance.collectionFormat case final value?) 'collectionFormat': value,
  if (instance.maxLength case final value?) 'maxLength': value,
  if (instance.minLength case final value?) 'minLength': value,
  if (instance.maxItems case final value?) 'maxItems': value,
  if (instance.minItems case final value?) 'minItems': value,
  if (instance.pattern case final value?) 'pattern': value,
  if (instance.uniqueItems case final value?) 'uniqueItems': value,
  if (instance.maxProperties case final value?) 'maxProperties': value,
  if (instance.minProperties case final value?) 'minProperties': value,
  if (instance.multipleOf case final value?) 'multipleOf': value,
  if (instance.$deprecated case final value?) 'deprecated': value,
};
