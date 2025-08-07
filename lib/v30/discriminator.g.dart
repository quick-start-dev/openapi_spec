// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discriminator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Discriminator _$DiscriminatorFromJson(Map<String, dynamic> json) =>
    _Discriminator(
      propertyName: json['propertyName'] as String,
      mapping: (json['mapping'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$DiscriminatorToJson(_Discriminator instance) =>
    <String, dynamic>{
      'propertyName': instance.propertyName,
      if (instance.mapping case final value?) 'mapping': value,
    };
