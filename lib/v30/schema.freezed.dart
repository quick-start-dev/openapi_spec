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
 Schema? get additionalProperties;/// The maximum value for a number.
 num? get maximum;/// The exclusive maximum value for a number.
 bool? get exclusiveMaximum;/// The minimum value for a number.
 num? get minimum;/// The exclusive minimum value for a number.
 bool? get exclusiveMinimum;/// A URL to external documentation for this schema.
 ExternalDocs? get externalDocs;/// A **Discriminator** object for handling polymorphism.
 Discriminator? get discriminator;/// An array of schemas where the data must be valid against all of
/// the schemas.
 List<Schema>? get allOf;/// Sets the ability to pass empty-valued parameters.
 bool? get allowEmptyValue;/// Determines the format of the array if type array is used.
 String? get collectionFormat;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.1.
 int? get maxLength;/// integer See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.2.
 int? get minLength;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.2.
 int? get maxItems;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
 int? get minItems;/// string  See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.2.3.
 String? get pattern;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.3.3.
 bool? get uniqueItems;/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
 num? get multipleOf;/// Declares this schema as deprecated.
@JsonKey(name: 'deprecated') bool? get $deprecated;
/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchemaCopyWith<Schema> get copyWith => _$SchemaCopyWithImpl<Schema>(this as Schema, _$identity);

  /// Serializes this Schema to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schema&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.$required, $required)&&const DeepCollectionEquality().equals(other.properties, properties)&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other.enumValues, enumValues)&&const DeepCollectionEquality().equals(other.$default, $default)&&(identical(other.xml, xml) || other.xml == xml)&&(identical(other.additionalProperties, additionalProperties) || other.additionalProperties == additionalProperties)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.exclusiveMaximum, exclusiveMaximum) || other.exclusiveMaximum == exclusiveMaximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.exclusiveMinimum, exclusiveMinimum) || other.exclusiveMinimum == exclusiveMinimum)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.discriminator, discriminator) || other.discriminator == discriminator)&&const DeepCollectionEquality().equals(other.allOf, allOf)&&(identical(other.allowEmptyValue, allowEmptyValue) || other.allowEmptyValue == allowEmptyValue)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxItems, maxItems) || other.maxItems == maxItems)&&(identical(other.minItems, minItems) || other.minItems == minItems)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.uniqueItems, uniqueItems) || other.uniqueItems == uniqueItems)&&(identical(other.multipleOf, multipleOf) || other.multipleOf == multipleOf)&&(identical(other.$deprecated, $deprecated) || other.$deprecated == $deprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ref,type,format,title,description,const DeepCollectionEquality().hash($required),const DeepCollectionEquality().hash(properties),items,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(enumValues),const DeepCollectionEquality().hash($default),xml,additionalProperties,maximum,exclusiveMaximum,minimum,exclusiveMinimum,externalDocs,discriminator,const DeepCollectionEquality().hash(allOf),allowEmptyValue,collectionFormat,maxLength,minLength,maxItems,minItems,pattern,uniqueItems,multipleOf,$deprecated]);

@override
String toString() {
  return 'Schema(ref: $ref, type: $type, format: $format, title: $title, description: $description, \$required: ${$required}, properties: $properties, items: $items, example: $example, enumValues: $enumValues, \$default: ${$default}, xml: $xml, additionalProperties: $additionalProperties, maximum: $maximum, exclusiveMaximum: $exclusiveMaximum, minimum: $minimum, exclusiveMinimum: $exclusiveMinimum, externalDocs: $externalDocs, discriminator: $discriminator, allOf: $allOf, allowEmptyValue: $allowEmptyValue, collectionFormat: $collectionFormat, maxLength: $maxLength, minLength: $minLength, maxItems: $maxItems, minItems: $minItems, pattern: $pattern, uniqueItems: $uniqueItems, multipleOf: $multipleOf, \$deprecated: ${$deprecated})';
}


}

/// @nodoc
abstract mixin class $SchemaCopyWith<$Res>  {
  factory $SchemaCopyWith(Schema value, $Res Function(Schema) _then) = _$SchemaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? type, String? format, String? title, String? description,@JsonKey(name: 'required') List<String>? $required, Map<String, Schema>? properties, Schema? items, dynamic example,@JsonKey(name: 'enum') List<dynamic>? enumValues,@JsonKey(name: 'default') dynamic $default, Xml? xml, Schema? additionalProperties, num? maximum, bool? exclusiveMaximum, num? minimum, bool? exclusiveMinimum, ExternalDocs? externalDocs, Discriminator? discriminator, List<Schema>? allOf, bool? allowEmptyValue, String? collectionFormat, int? maxLength, int? minLength, int? maxItems, int? minItems, String? pattern, bool? uniqueItems, num? multipleOf,@JsonKey(name: 'deprecated') bool? $deprecated
});


$SchemaCopyWith<$Res>? get items;$XmlCopyWith<$Res>? get xml;$SchemaCopyWith<$Res>? get additionalProperties;$ExternalDocsCopyWith<$Res>? get externalDocs;$DiscriminatorCopyWith<$Res>? get discriminator;

}
/// @nodoc
class _$SchemaCopyWithImpl<$Res>
    implements $SchemaCopyWith<$Res> {
  _$SchemaCopyWithImpl(this._self, this._then);

  final Schema _self;
  final $Res Function(Schema) _then;

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ref = freezed,Object? type = freezed,Object? format = freezed,Object? title = freezed,Object? description = freezed,Object? $required = freezed,Object? properties = freezed,Object? items = freezed,Object? example = freezed,Object? enumValues = freezed,Object? $default = freezed,Object? xml = freezed,Object? additionalProperties = freezed,Object? maximum = freezed,Object? exclusiveMaximum = freezed,Object? minimum = freezed,Object? exclusiveMinimum = freezed,Object? externalDocs = freezed,Object? discriminator = freezed,Object? allOf = freezed,Object? allowEmptyValue = freezed,Object? collectionFormat = freezed,Object? maxLength = freezed,Object? minLength = freezed,Object? maxItems = freezed,Object? minItems = freezed,Object? pattern = freezed,Object? uniqueItems = freezed,Object? multipleOf = freezed,Object? $deprecated = freezed,}) {
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
as Schema?,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMaximum: freezed == exclusiveMaximum ? _self.exclusiveMaximum : exclusiveMaximum // ignore: cast_nullable_to_non_nullable
as bool?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMinimum: freezed == exclusiveMinimum ? _self.exclusiveMinimum : exclusiveMinimum // ignore: cast_nullable_to_non_nullable
as bool?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,discriminator: freezed == discriminator ? _self.discriminator : discriminator // ignore: cast_nullable_to_non_nullable
as Discriminator?,allOf: freezed == allOf ? _self.allOf : allOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,allowEmptyValue: freezed == allowEmptyValue ? _self.allowEmptyValue : allowEmptyValue // ignore: cast_nullable_to_non_nullable
as bool?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxItems: freezed == maxItems ? _self.maxItems : maxItems // ignore: cast_nullable_to_non_nullable
as int?,minItems: freezed == minItems ? _self.minItems : minItems // ignore: cast_nullable_to_non_nullable
as int?,pattern: freezed == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String?,uniqueItems: freezed == uniqueItems ? _self.uniqueItems : uniqueItems // ignore: cast_nullable_to_non_nullable
as bool?,multipleOf: freezed == multipleOf ? _self.multipleOf : multipleOf // ignore: cast_nullable_to_non_nullable
as num?,$deprecated: freezed == $deprecated ? _self.$deprecated : $deprecated // ignore: cast_nullable_to_non_nullable
as bool?,
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
$SchemaCopyWith<$Res>? get additionalProperties {
    if (_self.additionalProperties == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.additionalProperties!, (value) {
    return _then(_self.copyWith(additionalProperties: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml,  Schema? additionalProperties,  num? maximum,  bool? exclusiveMaximum,  num? minimum,  bool? exclusiveMinimum,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.externalDocs,_that.discriminator,_that.allOf,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.multipleOf,_that.$deprecated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml,  Schema? additionalProperties,  num? maximum,  bool? exclusiveMaximum,  num? minimum,  bool? exclusiveMinimum,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated)  $default,) {final _that = this;
switch (_that) {
case _Schema():
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.externalDocs,_that.discriminator,_that.allOf,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.multipleOf,_that.$deprecated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: r'$ref')  String? ref,  String? type,  String? format,  String? title,  String? description, @JsonKey(name: 'required')  List<String>? $required,  Map<String, Schema>? properties,  Schema? items,  dynamic example, @JsonKey(name: 'enum')  List<dynamic>? enumValues, @JsonKey(name: 'default')  dynamic $default,  Xml? xml,  Schema? additionalProperties,  num? maximum,  bool? exclusiveMaximum,  num? minimum,  bool? exclusiveMinimum,  ExternalDocs? externalDocs,  Discriminator? discriminator,  List<Schema>? allOf,  bool? allowEmptyValue,  String? collectionFormat,  int? maxLength,  int? minLength,  int? maxItems,  int? minItems,  String? pattern,  bool? uniqueItems,  num? multipleOf, @JsonKey(name: 'deprecated')  bool? $deprecated)?  $default,) {final _that = this;
switch (_that) {
case _Schema() when $default != null:
return $default(_that.ref,_that.type,_that.format,_that.title,_that.description,_that.$required,_that.properties,_that.items,_that.example,_that.enumValues,_that.$default,_that.xml,_that.additionalProperties,_that.maximum,_that.exclusiveMaximum,_that.minimum,_that.exclusiveMinimum,_that.externalDocs,_that.discriminator,_that.allOf,_that.allowEmptyValue,_that.collectionFormat,_that.maxLength,_that.minLength,_that.maxItems,_that.minItems,_that.pattern,_that.uniqueItems,_that.multipleOf,_that.$deprecated);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Schema implements Schema {
  const _Schema({@JsonKey(name: r'$ref') this.ref, this.type, this.format, this.title, this.description, @JsonKey(name: 'required') final  List<String>? $required, final  Map<String, Schema>? properties, this.items, this.example, @JsonKey(name: 'enum') final  List<dynamic>? enumValues, @JsonKey(name: 'default') this.$default, this.xml, this.additionalProperties, this.maximum, this.exclusiveMaximum, this.minimum, this.exclusiveMinimum, this.externalDocs, this.discriminator, final  List<Schema>? allOf, this.allowEmptyValue, this.collectionFormat, this.maxLength, this.minLength, this.maxItems, this.minItems, this.pattern, this.uniqueItems, this.multipleOf, @JsonKey(name: 'deprecated') this.$deprecated}): _$required = $required,_properties = properties,_enumValues = enumValues,_allOf = allOf;
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
@override final  Schema? additionalProperties;
/// The maximum value for a number.
@override final  num? maximum;
/// The exclusive maximum value for a number.
@override final  bool? exclusiveMaximum;
/// The minimum value for a number.
@override final  num? minimum;
/// The exclusive minimum value for a number.
@override final  bool? exclusiveMinimum;
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
/// See https://tools.ietf.org/html/draft-fge-json-schema-validation-00#section-5.1.1.
@override final  num? multipleOf;
/// Declares this schema as deprecated.
@override@JsonKey(name: 'deprecated') final  bool? $deprecated;

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchemaCopyWith<_Schema> get copyWith => __$SchemaCopyWithImpl<_Schema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchemaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schema&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._$required, _$required)&&const DeepCollectionEquality().equals(other._properties, _properties)&&(identical(other.items, items) || other.items == items)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other._enumValues, _enumValues)&&const DeepCollectionEquality().equals(other.$default, $default)&&(identical(other.xml, xml) || other.xml == xml)&&(identical(other.additionalProperties, additionalProperties) || other.additionalProperties == additionalProperties)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.exclusiveMaximum, exclusiveMaximum) || other.exclusiveMaximum == exclusiveMaximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.exclusiveMinimum, exclusiveMinimum) || other.exclusiveMinimum == exclusiveMinimum)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.discriminator, discriminator) || other.discriminator == discriminator)&&const DeepCollectionEquality().equals(other._allOf, _allOf)&&(identical(other.allowEmptyValue, allowEmptyValue) || other.allowEmptyValue == allowEmptyValue)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxItems, maxItems) || other.maxItems == maxItems)&&(identical(other.minItems, minItems) || other.minItems == minItems)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.uniqueItems, uniqueItems) || other.uniqueItems == uniqueItems)&&(identical(other.multipleOf, multipleOf) || other.multipleOf == multipleOf)&&(identical(other.$deprecated, $deprecated) || other.$deprecated == $deprecated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,ref,type,format,title,description,const DeepCollectionEquality().hash(_$required),const DeepCollectionEquality().hash(_properties),items,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(_enumValues),const DeepCollectionEquality().hash($default),xml,additionalProperties,maximum,exclusiveMaximum,minimum,exclusiveMinimum,externalDocs,discriminator,const DeepCollectionEquality().hash(_allOf),allowEmptyValue,collectionFormat,maxLength,minLength,maxItems,minItems,pattern,uniqueItems,multipleOf,$deprecated]);

@override
String toString() {
  return 'Schema(ref: $ref, type: $type, format: $format, title: $title, description: $description, \$required: ${$required}, properties: $properties, items: $items, example: $example, enumValues: $enumValues, \$default: ${$default}, xml: $xml, additionalProperties: $additionalProperties, maximum: $maximum, exclusiveMaximum: $exclusiveMaximum, minimum: $minimum, exclusiveMinimum: $exclusiveMinimum, externalDocs: $externalDocs, discriminator: $discriminator, allOf: $allOf, allowEmptyValue: $allowEmptyValue, collectionFormat: $collectionFormat, maxLength: $maxLength, minLength: $minLength, maxItems: $maxItems, minItems: $minItems, pattern: $pattern, uniqueItems: $uniqueItems, multipleOf: $multipleOf, \$deprecated: ${$deprecated})';
}


}

/// @nodoc
abstract mixin class _$SchemaCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory _$SchemaCopyWith(_Schema value, $Res Function(_Schema) _then) = __$SchemaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? type, String? format, String? title, String? description,@JsonKey(name: 'required') List<String>? $required, Map<String, Schema>? properties, Schema? items, dynamic example,@JsonKey(name: 'enum') List<dynamic>? enumValues,@JsonKey(name: 'default') dynamic $default, Xml? xml, Schema? additionalProperties, num? maximum, bool? exclusiveMaximum, num? minimum, bool? exclusiveMinimum, ExternalDocs? externalDocs, Discriminator? discriminator, List<Schema>? allOf, bool? allowEmptyValue, String? collectionFormat, int? maxLength, int? minLength, int? maxItems, int? minItems, String? pattern, bool? uniqueItems, num? multipleOf,@JsonKey(name: 'deprecated') bool? $deprecated
});


@override $SchemaCopyWith<$Res>? get items;@override $XmlCopyWith<$Res>? get xml;@override $SchemaCopyWith<$Res>? get additionalProperties;@override $ExternalDocsCopyWith<$Res>? get externalDocs;@override $DiscriminatorCopyWith<$Res>? get discriminator;

}
/// @nodoc
class __$SchemaCopyWithImpl<$Res>
    implements _$SchemaCopyWith<$Res> {
  __$SchemaCopyWithImpl(this._self, this._then);

  final _Schema _self;
  final $Res Function(_Schema) _then;

/// Create a copy of Schema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ref = freezed,Object? type = freezed,Object? format = freezed,Object? title = freezed,Object? description = freezed,Object? $required = freezed,Object? properties = freezed,Object? items = freezed,Object? example = freezed,Object? enumValues = freezed,Object? $default = freezed,Object? xml = freezed,Object? additionalProperties = freezed,Object? maximum = freezed,Object? exclusiveMaximum = freezed,Object? minimum = freezed,Object? exclusiveMinimum = freezed,Object? externalDocs = freezed,Object? discriminator = freezed,Object? allOf = freezed,Object? allowEmptyValue = freezed,Object? collectionFormat = freezed,Object? maxLength = freezed,Object? minLength = freezed,Object? maxItems = freezed,Object? minItems = freezed,Object? pattern = freezed,Object? uniqueItems = freezed,Object? multipleOf = freezed,Object? $deprecated = freezed,}) {
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
as Schema?,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMaximum: freezed == exclusiveMaximum ? _self.exclusiveMaximum : exclusiveMaximum // ignore: cast_nullable_to_non_nullable
as bool?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,exclusiveMinimum: freezed == exclusiveMinimum ? _self.exclusiveMinimum : exclusiveMinimum // ignore: cast_nullable_to_non_nullable
as bool?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,discriminator: freezed == discriminator ? _self.discriminator : discriminator // ignore: cast_nullable_to_non_nullable
as Discriminator?,allOf: freezed == allOf ? _self._allOf : allOf // ignore: cast_nullable_to_non_nullable
as List<Schema>?,allowEmptyValue: freezed == allowEmptyValue ? _self.allowEmptyValue : allowEmptyValue // ignore: cast_nullable_to_non_nullable
as bool?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxItems: freezed == maxItems ? _self.maxItems : maxItems // ignore: cast_nullable_to_non_nullable
as int?,minItems: freezed == minItems ? _self.minItems : minItems // ignore: cast_nullable_to_non_nullable
as int?,pattern: freezed == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String?,uniqueItems: freezed == uniqueItems ? _self.uniqueItems : uniqueItems // ignore: cast_nullable_to_non_nullable
as bool?,multipleOf: freezed == multipleOf ? _self.multipleOf : multipleOf // ignore: cast_nullable_to_non_nullable
as num?,$deprecated: freezed == $deprecated ? _self.$deprecated : $deprecated // ignore: cast_nullable_to_non_nullable
as bool?,
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
$SchemaCopyWith<$Res>? get additionalProperties {
    if (_self.additionalProperties == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.additionalProperties!, (value) {
    return _then(_self.copyWith(additionalProperties: value));
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
}
}

// dart format on
