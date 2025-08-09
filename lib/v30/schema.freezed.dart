// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Schema {

/// A reference to another Schema Object, typically in the `components`
/// section.
@JsonKey(name: r'$ref') String? get ref;/// The data type of the schema (e.g., 'string', 'number', 'array').
 String? get type;/// The format of the data type (e.g., 'int32', 'date-time', 'email').
 String? get format;/// A title for the schema.
 String? get title;/// A brief description of the schema.
 String? get description;/// A list of properties that must be present in the object.
@JsonKey(name: 'required') List<String>? get $required;/// A map of property names to their respective [Schema] objects.
 Map<String, Schema>? get properties;/// For array types, this describes the type of items in the array.
 Schema? get items;/// An example value for the schema.
 dynamic get example;/// A list of possible values for an enum.
@JsonKey(name: 'enum') List<dynamic>? get enumValues;/// The default value for the schema.
@JsonKey(name: 'default') dynamic get $default;/// This MAY be used only on properties schemas.
/// It has no effect on root schemas.
/// Adds Additional metadata to describe the XML representation format of
/// this property.
 Xml? get xml;/// Specifies the schema for any additional properties in the object.
/// The value can be a boolean or a Schema object.
@JsonKey(includeFromJson: false, includeToJson: false) dynamic get additionalProperties;/// The maximum value for a number.
 num? get maximum;/// The exclusive maximum value for a number.
 num? get exclusiveMaximum;/// The minimum value for a number.
 num? get minimum;/// The exclusive minimum value for a number.
 num? get exclusiveMinimum;/// Relevant only for Schema Object properties definitions.
/// Declares the property as "read only".
 bool? get readOnly;/// Relevant only for Schema Object properties definitions.
/// Declares the property as "write only".
 bool? get writeOnly;/// A URL to external documentation for this schema.
 ExternalDocs? get externalDocs;/// A **Discriminator** object for handling polymorphism.
 Discriminator? get discriminator;/// An array of schemas where the data must be valid against all of
/// the schemas.
 List<Schema>? get allOf;/// An array of schemas where the data must be valid against one of
/// the schemas.
 List<Schema>? get oneOf;/// An array of schemas where the data must be valid against any of
/// the schemas.
 List<Schema>? get anyOf;/// A schema where the data must not be valid against this schema.
 Schema? get not;/// A `true` value indicates that both `null` values and values of the
/// specified `type` are allowed.
 bool? get nullable;/// Sets the ability to pass empty-valued parameters.
 bool? get allowEmptyValue;/// Determines the format of the array if type array is used.
 String? get collectionFormat;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.1.
 int? get maxLength;/// integer See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.2.
 int? get minLength;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.2.
 int? get maxItems;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
 int? get minItems;/// string  See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.3.
 String? get pattern;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
 bool? get uniqueItems;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.1
 int? get maxProperties;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.2
 int? get minProperties;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
 num? get multipleOf;/// Declares this schema as deprecated.
@JsonKey(name: 'deprecated') bool? get $deprecated;/// A map of OpenAPI extensions.
@JsonKey(includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions;
/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaCopyWith<Schema> get copyWith => _$SchemaCopyWithImpl<Schema>(this as Schema, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schema&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.$required, $required)&&const DeepCollectionEquality().equals(other.properties, properties)&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other.enumValues, enumValues)&&const DeepCollectionEquality().equals(other.$default, $default)&&(identical(other.xml, xml) || other.xml == xml)&&const DeepCollectionEquality().equals(other.additionalProperties, additionalProperties)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.exclusiveMaximum, exclusiveMaximum) || other.exclusiveMaximum == exclusiveMaximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.exclusiveMinimum, exclusiveMinimum) || other.exclusiveMinimum == exclusiveMinimum)&&(identical(other.readOnly, readOnly) || other.readOnly == readOnly)&&(identical(other.writeOnly, writeOnly) || other.writeOnly == writeOnly)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.discriminator, discriminator) || other.discriminator == discriminator)&&const DeepCollectionEquality().equals(other.allOf, allOf)&&const DeepCollectionEquality().equals(other.oneOf, oneOf)&&const DeepCollectionEquality().equals(other.anyOf, anyOf)&&(identical(other.not, not) || other.not == not)&&(identical(other.nullable, nullable) || other.nullable == nullable)&&(identical(other.allowEmptyValue, allowEmptyValue) || other.allowEmptyValue == allowEmptyValue)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxItems, maxItems) || other.maxItems == maxItems)&&(identical(other.minItems, minItems) || other.minItems == minItems)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.uniqueItems, uniqueItems) || other.uniqueItems == uniqueItems)&&(identical(other.maxProperties, maxProperties) || other.maxProperties == maxProperties)&&(identical(other.minProperties, minProperties) || other.minProperties == minProperties)&&(identical(other.multipleOf, multipleOf) || other.multipleOf == multipleOf)&&(identical(other.$deprecated, $deprecated) || other.$deprecated == $deprecated)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ref,type,format,title,description,const DeepCollectionEquality().hash($required),const DeepCollectionEquality().hash(properties),items,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(enumValues),const DeepCollectionEquality().hash($default),xml,const DeepCollectionEquality().hash(additionalProperties),maximum,exclusiveMaximum,minimum,exclusiveMinimum,readOnly,writeOnly,externalDocs,discriminator,const DeepCollectionEquality().hash(allOf),const DeepCollectionEquality().hash(oneOf),const DeepCollectionEquality().hash(anyOf),not,nullable,allowEmptyValue,collectionFormat,maxLength,minLength,maxItems,minItems,pattern,uniqueItems,maxProperties,minProperties,multipleOf,$deprecated,const DeepCollectionEquality().hash(extensions)]);

@override
String toString() {
  return 'Schema(ref: $ref, type: $type, format: $format, title: $title, description: $description, \$required: ${$required}, properties: $properties, items: $items, example: $example, enumValues: $enumValues, \$default: ${$default}, xml: $xml, additionalProperties: $additionalProperties, maximum: $maximum, exclusiveMaximum: $exclusiveMaximum, minimum: $minimum, exclusiveMinimum: $exclusiveMinimum, readOnly: $readOnly, writeOnly: $writeOnly, externalDocs: $externalDocs, discriminator: $discriminator, allOf: $allOf, oneOf: $oneOf, anyOf: $anyOf, not: $not, nullable: $nullable, allowEmptyValue: $allowEmptyValue, collectionFormat: $collectionFormat, maxLength: $maxLength, minLength: $minLength, maxItems: $maxItems, minItems: $minItems, pattern: $pattern, uniqueItems: $uniqueItems, maxProperties: $maxProperties, minProperties: $minProperties, multipleOf: $multipleOf, \$deprecated: ${$deprecated}, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $SchemaCopyWith<$Res>  {
  factory $SchemaCopyWith(Schema value, $Res Function(Schema) _then) = _$SchemaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? type, String? format, String? title, String? description,@JsonKey(name: 'required') List<String>? $required, Map<String, Schema>? properties, Schema? items, dynamic example,@JsonKey(name: 'enum') List<dynamic>? enumValues,@JsonKey(name: 'default') dynamic $default, Xml? xml,@JsonKey(includeFromJson: false, includeToJson: false) dynamic additionalProperties, num? maximum, num? exclusiveMaximum, num? minimum, num? exclusiveMinimum, bool? readOnly, bool? writeOnly, ExternalDocs? externalDocs, Discriminator? discriminator, List<Schema>? allOf, List<Schema>? oneOf, List<Schema>? anyOf, Schema? not, bool? nullable, bool? allowEmptyValue, String? collectionFormat, int? maxLength, int? minLength, int? maxItems, int? minItems, String? pattern, bool? uniqueItems, int? maxProperties, int? minProperties, num? multipleOf,@JsonKey(name: 'deprecated') bool? $deprecated,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


$SchemaCopyWith<$Res>? get items;$XmlCopyWith<$Res>? get xml;$ExternalDocsCopyWith<$Res>? get externalDocs;$DiscriminatorCopyWith<$Res>? get discriminator;$SchemaCopyWith<$Res>? get not;

}
/// @nodoc
class _$SchemaCopyWithImpl<$Res>
    implements $SchemaCopyWith<$Res> {
  _$SchemaCopyWithImpl(this._self, this._then);

  final Schema _self;
  final $Res Function(Schema) _then;

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ref = freezed,Object? type = freezed,Object? format = freezed,Object? title = freezed,Object? description = freezed,Object? $required = freezed,Object? properties = freezed,Object? items = freezed,Object? example = freezed,Object? enumValues = freezed,Object? $default = freezed,Object? xml = freezed,Object? additionalProperties = freezed,Object? maximum = freezed,Object? exclusiveMaximum = freezed,Object? minimum = freezed,Object? exclusiveMinimum = freezed,Object? readOnly = freezed,Object? writeOnly = freezed,Object? externalDocs = freezed,Object? discriminator = freezed,Object? allOf = freezed,Object? oneOf = freezed,Object? anyOf = freezed,Object? not = freezed,Object? nullable = freezed,Object? allowEmptyValue = freezed,Object? collectionFormat = freezed,Object? maxLength = freezed,Object? minLength = freezed,Object? maxItems = freezed,Object? minItems = freezed,Object? pattern = freezed,Object? uniqueItems = freezed,Object? maxProperties = freezed,Object? minProperties = freezed,Object? multipleOf = freezed,Object? $deprecated = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,$required: freezed == $required ? _self.$required : $required // ignore: cast_nullable_to_non_nullable
as List<String>?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Schema?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,enumValues: freezed == enumValues ? _self.enumValues : enumValues // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,$default: freezed == $default ? _self.$default : $default // ignore: cast_nullable_to_non_nullable
as dynamic,xml: freezed == xml ? _self.xml : xml // ignore: cast_nullable_to_non_nullable
as Xml?,additionalProperties: freezed == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as dynamic,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMaximum: freezed == exclusiveMaximum ? _self.exclusiveMaximum : exclusiveMaximum // ignore: cast_nullable_to_non_nullable
as num?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMinimum: freezed == exclusiveMinimum ? _self.exclusiveMinimum : exclusiveMinimum // ignore: cast_nullable_to_non_nullable
as num?,readOnly: freezed == readOnly ? _self.readOnly : readOnly // ignore: cast_nullable_to_non_nullable
as bool?,writeOnly: freezed == writeOnly ? _self.writeOnly : writeOnly // ignore: cast_nullable_to_non_nullable
as bool?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,discriminator: freezed == discriminator ? _self.discriminator : discriminator // ignore: cast_nullable_to_non_nullable
as Discriminator?,allOf: freezed == allOf ? _self.allOf : allOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,oneOf: freezed == oneOf ? _self.oneOf : oneOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,anyOf: freezed == anyOf ? _self.anyOf : anyOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,not: freezed == not ? _self.not : not // ignore: cast_nullable_to_non_nullable
as Schema?,nullable: freezed == nullable ? _self.nullable : nullable // ignore: cast_nullable_to_non_nullable
as bool?,allowEmptyValue: freezed == allowEmptyValue ? _self.allowEmptyValue : allowEmptyValue // ignore: cast_nullable_to_non_nullable
as bool?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxItems: freezed == maxItems ? _self.maxItems : maxItems // ignore: cast_nullable_to_non_nullable
as int?,minItems: freezed == minItems ? _self.minItems : minItems // ignore: cast_nullable_to_non_nullable
as int?,pattern: freezed == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String?,uniqueItems: freezed == uniqueItems ? _self.uniqueItems : uniqueItems // ignore: cast_nullable_to_non_nullable
as bool?,maxProperties: freezed == maxProperties ? _self.maxProperties : maxProperties // ignore: cast_nullable_to_non_nullable
as int?,minProperties: freezed == minProperties ? _self.minProperties : minProperties // ignore: cast_nullable_to_non_nullable
as int?,multipleOf: freezed == multipleOf ? _self.multipleOf : multipleOf // ignore: cast_nullable_to_non_nullable
as num?,$deprecated: freezed == $deprecated ? _self.$deprecated : $deprecated // ignore: cast_nullable_to_non_nullable
as bool?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.items!, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XmlCopyWith<$Res>? get xml {
    if (_self.xml == null) {
    return null;
  }

  return $XmlCopyWith<$Res>(_self.xml!, (value) {
    return _then(_self.copyWith(xml: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalDocsCopyWith<$Res>? get externalDocs {
    if (_self.externalDocs == null) {
    return null;
  }

  return $ExternalDocsCopyWith<$Res>(_self.externalDocs!, (value) {
    return _then(_self.copyWith(externalDocs: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
    return null;
  }

  return $DiscriminatorCopyWith<$Res>(_self.discriminator!, (value) {
    return _then(_self.copyWith(discriminator: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get not {
    if (_self.not == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.not!, (value) {
    return _then(_self.copyWith(not: value));
  });
}
}


/// Adds pattern-matching-related methods to [Schema].
extension SchemaPatterns on Schema {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Schema value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Schema value)  $default,){
final _that = this;
switch (_that) {
case _Schema():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Schema value)?  $default,){
final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml, @JsonKey(includeFromJson: false, includeToJson: false)  dynamic additionalProperties,  num? maximum,  num? exclusiveMaximum,  num? minimum,  num? exclusiveMinimum,  bool? readOnly,  bool? writeOnly,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  List<Schema>? oneOf,  List<Schema>? anyOf,  Schema? not,  bool? nullable,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  int? maxProperties,  int? minProperties,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.readOnly,_that.writeOnly,_that.externalDocs,_that.discriminator,_that.allOf,_that.oneOf,_that.anyOf,_that.not,_that.nullable,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.maxProperties,_that.minProperties,_that.multipleOf,_that.$deprecated,_that.extensions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml, @JsonKey(includeFromJson: false, includeToJson: false)  dynamic additionalProperties,  num? maximum,  num? exclusiveMaximum,  num? minimum,  num? exclusiveMinimum,  bool? readOnly,  bool? writeOnly,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  List<Schema>? oneOf,  List<Schema>? anyOf,  Schema? not,  bool? nullable,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  int? maxProperties,  int? minProperties,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _Schema():
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.readOnly,_that.writeOnly,_that.externalDocs,_that.discriminator,_that.allOf,_that.oneOf,_that.anyOf,_that.not,_that.nullable,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.maxProperties,_that.minProperties,_that.multipleOf,_that.$deprecated,_that.extensions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml, @JsonKey(includeFromJson: false, includeToJson: false)  dynamic additionalProperties,  num? maximum,  num? exclusiveMaximum,  num? minimum,  num? exclusiveMinimum,  bool? readOnly,  bool? writeOnly,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  List<Schema>? oneOf,  List<Schema>? anyOf,  Schema? not,  bool? nullable,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  int? maxProperties,  int? minProperties,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.readOnly,_that.writeOnly,_that.externalDocs,_that.discriminator,_that.allOf,_that.oneOf,_that.anyOf,_that.not,_that.nullable,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.maxProperties,_that.minProperties,_that.multipleOf,_that.$deprecated,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Schema extends Schema {
  const _Schema({@JsonKey(name: r'$ref') this.ref, this.type, this.format, this.title, this.description, @JsonKey(name: 'required') final  List<String>? $required, final  Map<String, Schema>? properties, this.items, this.example, @JsonKey(name: 'enum') final  List<dynamic>? enumValues, @JsonKey(name: 'default') this.$default, this.xml, @JsonKey(includeFromJson: false, includeToJson: false) this.additionalProperties, this.maximum, this.exclusiveMaximum, this.minimum, this.exclusiveMinimum, this.readOnly, this.writeOnly, this.externalDocs, this.discriminator, final  List<Schema>? allOf, final  List<Schema>? oneOf, final  List<Schema>? anyOf, this.not, this.nullable, this.allowEmptyValue, this.collectionFormat, this.maxLength, this.minLength, this.maxItems, this.minItems, this.pattern, this.uniqueItems, this.maxProperties, this.minProperties, this.multipleOf, @JsonKey(name: 'deprecated') this.$deprecated, @JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, dynamic>? extensions}): _$required = $required,_properties = properties,_enumValues = enumValues,_allOf = allOf,_oneOf = oneOf,_anyOf = anyOf,_extensions = extensions,super._();
  factory _Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);

/// A reference to another Schema Object, typically in the `components`
/// section.
@override@JsonKey(name: r'$ref') final  String? ref;
/// The data type of the schema (e.g., 'string', 'number', 'array').
@override final  String? type;
/// The format of the data type (e.g., 'int32', 'date-time', 'email').
@override final  String? format;
/// A title for the schema.
@override final  String? title;
/// A brief description of the schema.
@override final  String? description;
/// A list of properties that must be present in the object.
 final  List<String>? _$required;
/// A list of properties that must be present in the object.
@override@JsonKey(name: 'required') List<String>? get $required {
  final value = _$required;
  if (value == null) return null;
  if (_$required is EqualUnmodifiableListView) return _$required;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// A map of property names to their respective [Schema] objects.
 final  Map<String, Schema>? _properties;
/// A map of property names to their respective [Schema] objects.
@override Map<String, Schema>? get properties {
  final value = _properties;
  if (value == null) return null;
  if (_properties is EqualUnmodifiableMapView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// For array types, this describes the type of items in the array.
@override final  Schema? items;
/// An example value for the schema.
@override final  dynamic example;
/// A list of possible values for an enum.
 final  List<dynamic>? _enumValues;
/// A list of possible values for an enum.
@override@JsonKey(name: 'enum') List<dynamic>? get enumValues {
  final value = _enumValues;
  if (value == null) return null;
  if (_enumValues is EqualUnmodifiableListView) return _enumValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The default value for the schema.
@override@JsonKey(name: 'default') final  dynamic $default;
/// This MAY be used only on properties schemas.
/// It has no effect on root schemas.
/// Adds Additional metadata to describe the XML representation format of
/// this property.
@override final  Xml? xml;
/// Specifies the schema for any additional properties in the object.
/// The value can be a boolean or a Schema object.
@override@JsonKey(includeFromJson: false, includeToJson: false) final  dynamic additionalProperties;
/// The maximum value for a number.
@override final  num? maximum;
/// The exclusive maximum value for a number.
@override final  num? exclusiveMaximum;
/// The minimum value for a number.
@override final  num? minimum;
/// The exclusive minimum value for a number.
@override final  num? exclusiveMinimum;
/// Relevant only for Schema Object properties definitions.
/// Declares the property as "read only".
@override final  bool? readOnly;
/// Relevant only for Schema Object properties definitions.
/// Declares the property as "write only".
@override final  bool? writeOnly;
/// A URL to external documentation for this schema.
@override final  ExternalDocs? externalDocs;
/// A **Discriminator** object for handling polymorphism.
@override final  Discriminator? discriminator;
/// An array of schemas where the data must be valid against all of
/// the schemas.
 final  List<Schema>? _allOf;
/// An array of schemas where the data must be valid against all of
/// the schemas.
@override List<Schema>? get allOf {
  final value = _allOf;
  if (value == null) return null;
  if (_allOf is EqualUnmodifiableListView) return _allOf;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// An array of schemas where the data must be valid against one of
/// the schemas.
 final  List<Schema>? _oneOf;
/// An array of schemas where the data must be valid against one of
/// the schemas.
@override List<Schema>? get oneOf {
  final value = _oneOf;
  if (value == null) return null;
  if (_oneOf is EqualUnmodifiableListView) return _oneOf;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// An array of schemas where the data must be valid against any of
/// the schemas.
 final  List<Schema>? _anyOf;
/// An array of schemas where the data must be valid against any of
/// the schemas.
@override List<Schema>? get anyOf {
  final value = _anyOf;
  if (value == null) return null;
  if (_anyOf is EqualUnmodifiableListView) return _anyOf;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// A schema where the data must not be valid against this schema.
@override final  Schema? not;
/// A `true` value indicates that both `null` values and values of the
/// specified `type` are allowed.
@override final  bool? nullable;
/// Sets the ability to pass empty-valued parameters.
@override final  bool? allowEmptyValue;
/// Determines the format of the array if type array is used.
@override final  String? collectionFormat;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.1.
@override final  int? maxLength;
/// integer See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.2.
@override final  int? minLength;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.2.
@override final  int? maxItems;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
@override final  int? minItems;
/// string  See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.3.
@override final  String? pattern;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
@override final  bool? uniqueItems;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.1
@override final  int? maxProperties;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.4.2
@override final  int? minProperties;
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
@override final  num? multipleOf;
/// Declares this schema as deprecated.
@override@JsonKey(name: 'deprecated') final  bool? $deprecated;
/// A map of OpenAPI extensions.
 final  Map<String, dynamic>? _extensions;
/// A map of OpenAPI extensions.
@override@JsonKey(includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions {
  final value = _extensions;
  if (value == null) return null;
  if (_extensions is EqualUnmodifiableMapView) return _extensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaCopyWith<_Schema> get copyWith => __$SchemaCopyWithImpl<_Schema>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schema&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._$required, _$required)&&const DeepCollectionEquality().equals(other._properties, _properties)&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other._enumValues, _enumValues)&&const DeepCollectionEquality().equals(other.$default, $default)&&(identical(other.xml, xml) || other.xml == xml)&&const DeepCollectionEquality().equals(other.additionalProperties, additionalProperties)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.exclusiveMaximum, exclusiveMaximum) || other.exclusiveMaximum == exclusiveMaximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.exclusiveMinimum, exclusiveMinimum) || other.exclusiveMinimum == exclusiveMinimum)&&(identical(other.readOnly, readOnly) || other.readOnly == readOnly)&&(identical(other.writeOnly, writeOnly) || other.writeOnly == writeOnly)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.discriminator, discriminator) || other.discriminator == discriminator)&&const DeepCollectionEquality().equals(other._allOf, _allOf)&&const DeepCollectionEquality().equals(other._oneOf, _oneOf)&&const DeepCollectionEquality().equals(other._anyOf, _anyOf)&&(identical(other.not, not) || other.not == not)&&(identical(other.nullable, nullable) || other.nullable == nullable)&&(identical(other.allowEmptyValue, allowEmptyValue) || other.allowEmptyValue == allowEmptyValue)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxItems, maxItems) || other.maxItems == maxItems)&&(identical(other.minItems, minItems) || other.minItems == minItems)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.uniqueItems, uniqueItems) || other.uniqueItems == uniqueItems)&&(identical(other.maxProperties, maxProperties) || other.maxProperties == maxProperties)&&(identical(other.minProperties, minProperties) || other.minProperties == minProperties)&&(identical(other.multipleOf, multipleOf) || other.multipleOf == multipleOf)&&(identical(other.$deprecated, $deprecated) || other.$deprecated == $deprecated)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ref,type,format,title,description,const DeepCollectionEquality().hash(_$required),const DeepCollectionEquality().hash(_properties),items,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(_enumValues),const DeepCollectionEquality().hash($default),xml,const DeepCollectionEquality().hash(additionalProperties),maximum,exclusiveMaximum,minimum,exclusiveMinimum,readOnly,writeOnly,externalDocs,discriminator,const DeepCollectionEquality().hash(_allOf),const DeepCollectionEquality().hash(_oneOf),const DeepCollectionEquality().hash(_anyOf),not,nullable,allowEmptyValue,collectionFormat,maxLength,minLength,maxItems,minItems,pattern,uniqueItems,maxProperties,minProperties,multipleOf,$deprecated,const DeepCollectionEquality().hash(_extensions)]);

@override
String toString() {
  return 'Schema(ref: $ref, type: $type, format: $format, title: $title, description: $description, \$required: ${$required}, properties: $properties, items: $items, example: $example, enumValues: $enumValues, \$default: ${$default}, xml: $xml, additionalProperties: $additionalProperties, maximum: $maximum, exclusiveMaximum: $exclusiveMaximum, minimum: $minimum, exclusiveMinimum: $exclusiveMinimum, readOnly: $readOnly, writeOnly: $writeOnly, externalDocs: $externalDocs, discriminator: $discriminator, allOf: $allOf, oneOf: $oneOf, anyOf: $anyOf, not: $not, nullable: $nullable, allowEmptyValue: $allowEmptyValue, collectionFormat: $collectionFormat, maxLength: $maxLength, minLength: $minLength, maxItems: $maxItems, minItems: $minItems, pattern: $pattern, uniqueItems: $uniqueItems, maxProperties: $maxProperties, minProperties: $minProperties, multipleOf: $multipleOf, \$deprecated: ${$deprecated}, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$SchemaCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory _$SchemaCopyWith(_Schema value, $Res Function(_Schema) _then) = __$SchemaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? type, String? format, String? title, String? description,@JsonKey(name: 'required') List<String>? $required, Map<String, Schema>? properties, Schema? items, dynamic example,@JsonKey(name: 'enum') List<dynamic>? enumValues,@JsonKey(name: 'default') dynamic $default, Xml? xml,@JsonKey(includeFromJson: false, includeToJson: false) dynamic additionalProperties, num? maximum, num? exclusiveMaximum, num? minimum, num? exclusiveMinimum, bool? readOnly, bool? writeOnly, ExternalDocs? externalDocs, Discriminator? discriminator, List<Schema>? allOf, List<Schema>? oneOf, List<Schema>? anyOf, Schema? not, bool? nullable, bool? allowEmptyValue, String? collectionFormat, int? maxLength, int? minLength, int? maxItems, int? minItems, String? pattern, bool? uniqueItems, int? maxProperties, int? minProperties, num? multipleOf,@JsonKey(name: 'deprecated') bool? $deprecated,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


@override $SchemaCopyWith<$Res>? get items;@override $XmlCopyWith<$Res>? get xml;@override $ExternalDocsCopyWith<$Res>? get externalDocs;@override $DiscriminatorCopyWith<$Res>? get discriminator;@override $SchemaCopyWith<$Res>? get not;

}
/// @nodoc
class __$SchemaCopyWithImpl<$Res>
    implements _$SchemaCopyWith<$Res> {
  __$SchemaCopyWithImpl(this._self, this._then);

  final _Schema _self;
  final $Res Function(_Schema) _then;

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ref = freezed,Object? type = freezed,Object? format = freezed,Object? title = freezed,Object? description = freezed,Object? $required = freezed,Object? properties = freezed,Object? items = freezed,Object? example = freezed,Object? enumValues = freezed,Object? $default = freezed,Object? xml = freezed,Object? additionalProperties = freezed,Object? maximum = freezed,Object? exclusiveMaximum = freezed,Object? minimum = freezed,Object? exclusiveMinimum = freezed,Object? readOnly = freezed,Object? writeOnly = freezed,Object? externalDocs = freezed,Object? discriminator = freezed,Object? allOf = freezed,Object? oneOf = freezed,Object? anyOf = freezed,Object? not = freezed,Object? nullable = freezed,Object? allowEmptyValue = freezed,Object? collectionFormat = freezed,Object? maxLength = freezed,Object? minLength = freezed,Object? maxItems = freezed,Object? minItems = freezed,Object? pattern = freezed,Object? uniqueItems = freezed,Object? maxProperties = freezed,Object? minProperties = freezed,Object? multipleOf = freezed,Object? $deprecated = freezed,Object? extensions = freezed,}) {
  return _then(_Schema(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,$required: freezed == $required ? _self._$required : $required // ignore: cast_nullable_to_non_nullable
as List<String>?,properties: freezed == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Schema?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,enumValues: freezed == enumValues ? _self._enumValues : enumValues // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,$default: freezed == $default ? _self.$default : $default // ignore: cast_nullable_to_non_nullable
as dynamic,xml: freezed == xml ? _self.xml : xml // ignore: cast_nullable_to_non_nullable
as Xml?,additionalProperties: freezed == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as dynamic,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMaximum: freezed == exclusiveMaximum ? _self.exclusiveMaximum : exclusiveMaximum // ignore: cast_nullable_to_non_nullable
as num?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMinimum: freezed == exclusiveMinimum ? _self.exclusiveMinimum : exclusiveMinimum // ignore: cast_nullable_to_non_nullable
as num?,readOnly: freezed == readOnly ? _self.readOnly : readOnly // ignore: cast_nullable_to_non_nullable
as bool?,writeOnly: freezed == writeOnly ? _self.writeOnly : writeOnly // ignore: cast_nullable_to_non_nullable
as bool?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,discriminator: freezed == discriminator ? _self.discriminator : discriminator // ignore: cast_nullable_to_non_nullable
as Discriminator?,allOf: freezed == allOf ? _self._allOf : allOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,oneOf: freezed == oneOf ? _self._oneOf : oneOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,anyOf: freezed == anyOf ? _self._anyOf : anyOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,not: freezed == not ? _self.not : not // ignore: cast_nullable_to_non_nullable
as Schema?,nullable: freezed == nullable ? _self.nullable : nullable // ignore: cast_nullable_to_non_nullable
as bool?,allowEmptyValue: freezed == allowEmptyValue ? _self.allowEmptyValue : allowEmptyValue // ignore: cast_nullable_to_non_nullable
as bool?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxItems: freezed == maxItems ? _self.maxItems : maxItems // ignore: cast_nullable_to_non_nullable
as int?,minItems: freezed == minItems ? _self.minItems : minItems // ignore: cast_nullable_to_non_nullable
as int?,pattern: freezed == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String?,uniqueItems: freezed == uniqueItems ? _self.uniqueItems : uniqueItems // ignore: cast_nullable_to_non_nullable
as bool?,maxProperties: freezed == maxProperties ? _self.maxProperties : maxProperties // ignore: cast_nullable_to_non_nullable
as int?,minProperties: freezed == minProperties ? _self.minProperties : minProperties // ignore: cast_nullable_to_non_nullable
as int?,multipleOf: freezed == multipleOf ? _self.multipleOf : multipleOf // ignore: cast_nullable_to_non_nullable
as num?,$deprecated: freezed == $deprecated ? _self.$deprecated : $deprecated // ignore: cast_nullable_to_non_nullable
as bool?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get items {
    if (_self.items == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.items!, (value) {
    return _then(_self.copyWith(items: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XmlCopyWith<$Res>? get xml {
    if (_self.xml == null) {
    return null;
  }

  return $XmlCopyWith<$Res>(_self.xml!, (value) {
    return _then(_self.copyWith(xml: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExternalDocsCopyWith<$Res>? get externalDocs {
    if (_self.externalDocs == null) {
    return null;
  }

  return $ExternalDocsCopyWith<$Res>(_self.externalDocs!, (value) {
    return _then(_self.copyWith(externalDocs: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscriminatorCopyWith<$Res>? get discriminator {
    if (_self.discriminator == null) {
    return null;
  }

  return $DiscriminatorCopyWith<$Res>(_self.discriminator!, (value) {
    return _then(_self.copyWith(discriminator: value));
  });
}/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get not {
    if (_self.not == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.not!, (value) {
    return _then(_self.copyWith(not: value));
  });
}
}

// dart format on
