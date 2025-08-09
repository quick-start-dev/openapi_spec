// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Parameter {

/// A reference to a Parameter Object, typically in the `components`
/// section. If this field is non-null, all other fields must be null.
@JsonKey(name: r'$ref') String? get ref;/// The name of the parameter.
 String? get name;/// The location of the parameter, typically `query`, `header`, `path`,
/// or `cookie`.
@JsonKey(name: 'in') ParameterLocation? get location;/// A brief description of the parameter.
 String? get description;/// Specifies whether the parameter is required.
 bool? get required;/// Specifies whether the parameter is deprecated.
 bool? get deprecated;/// Specifies the schema of the parameter's value (OpenAPI 3.0).
 Schema? get schema;/// The data type of the parameter (OpenAPI 2.0).
 String? get type;/// The format of the parameter's value (OpenAPI 2.0).
 String? get format;/// The collection format for array parameters (OpenAPI 2.0).
 String? get collectionFormat;/// For array types, describes the type of items in the array (OpenAPI 2.0).
 Schema? get items;/// The maximum allowed value for a numeric parameter.
 num? get maximum;/// The minimum allowed value for a numeric parameter.
 num? get minimum;/// Specifies whether array or object parameters should be exploded.
 bool? get explode;/// The default value for the parameter.
 dynamic get example;
/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParameterCopyWith<Parameter> get copyWith => _$ParameterCopyWithImpl<Parameter>(this as Parameter, _$identity);

  /// Serializes this Parameter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Parameter&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.required, required) || other.required == required)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.items, items) || other.items == items)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.explode, explode) || other.explode == explode)&&const DeepCollectionEquality().equals(other.example, example));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ref,name,location,description,required,deprecated,schema,type,format,collectionFormat,items,maximum,minimum,explode,const DeepCollectionEquality().hash(example));

@override
String toString() {
  return 'Parameter(ref: $ref, name: $name, location: $location, description: $description, required: $required, deprecated: $deprecated, schema: $schema, type: $type, format: $format, collectionFormat: $collectionFormat, items: $items, maximum: $maximum, minimum: $minimum, explode: $explode, example: $example)';
}


}

/// @nodoc
abstract mixin class $ParameterCopyWith<$Res>  {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) _then) = _$ParameterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? description, bool? required, bool? deprecated, Schema? schema, String? type, String? format, String? collectionFormat, Schema? items, num? maximum, num? minimum, bool? explode, dynamic example
});


$SchemaCopyWith<$Res>? get schema;$SchemaCopyWith<$Res>? get items;

}
/// @nodoc
class _$ParameterCopyWithImpl<$Res>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._self, this._then);

  final Parameter _self;
  final $Res Function(Parameter) _then;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ref = freezed,Object? name = freezed,Object? location = freezed,Object? description = freezed,Object? required = freezed,Object? deprecated = freezed,Object? schema = freezed,Object? type = freezed,Object? format = freezed,Object? collectionFormat = freezed,Object? items = freezed,Object? maximum = freezed,Object? minimum = freezed,Object? explode = freezed,Object? example = freezed,}) {
  return _then(_self.copyWith(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Schema?,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get schema {
    if (_self.schema == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.schema!, (value) {
    return _then(_self.copyWith(schema: value));
  });
}/// Create a copy of Parameter
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
}
}


/// Adds pattern-matching-related methods to [Parameter].
extension ParameterPatterns on Parameter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Parameter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Parameter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Parameter value)  $default,){
final _that = this;
switch (_that) {
case _Parameter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Parameter value)?  $default,){
final _that = this;
switch (_that) {
case _Parameter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? description,  bool? required,  bool? deprecated,  Schema? schema,  String? type,  String? format,  String? collectionFormat,  Schema? items,  num? maximum,  num? minimum,  bool? explode,  dynamic example)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Parameter() when $default != null:
return $default(_that.ref,_that.name,_that.location,_that.description,_that.required,_that.deprecated,_that.schema,_that.type,_that.format,_that.collectionFormat,_that.items,_that.maximum,_that.minimum,_that.explode,_that.example);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: r'$ref')  String? ref,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? description,  bool? required,  bool? deprecated,  Schema? schema,  String? type,  String? format,  String? collectionFormat,  Schema? items,  num? maximum,  num? minimum,  bool? explode,  dynamic example)  $default,) {final _that = this;
switch (_that) {
case _Parameter():
return $default(_that.ref,_that.name,_that.location,_that.description,_that.required,_that.deprecated,_that.schema,_that.type,_that.format,_that.collectionFormat,_that.items,_that.maximum,_that.minimum,_that.explode,_that.example);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: r'$ref')  String? ref,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? description,  bool? required,  bool? deprecated,  Schema? schema,  String? type,  String? format,  String? collectionFormat,  Schema? items,  num? maximum,  num? minimum,  bool? explode,  dynamic example)?  $default,) {final _that = this;
switch (_that) {
case _Parameter() when $default != null:
return $default(_that.ref,_that.name,_that.location,_that.description,_that.required,_that.deprecated,_that.schema,_that.type,_that.format,_that.collectionFormat,_that.items,_that.maximum,_that.minimum,_that.explode,_that.example);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Parameter implements Parameter {
  const _Parameter({@JsonKey(name: r'$ref') this.ref, this.name, @JsonKey(name: 'in') this.location, this.description, this.required, this.deprecated, this.schema, this.type, this.format, this.collectionFormat, this.items, this.maximum, this.minimum, this.explode, this.example});
  factory _Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);

/// A reference to a Parameter Object, typically in the `components`
/// section. If this field is non-null, all other fields must be null.
@override@JsonKey(name: r'$ref') final  String? ref;
/// The name of the parameter.
@override final  String? name;
/// The location of the parameter, typically `query`, `header`, `path`,
/// or `cookie`.
@override@JsonKey(name: 'in') final  ParameterLocation? location;
/// A brief description of the parameter.
@override final  String? description;
/// Specifies whether the parameter is required.
@override final  bool? required;
/// Specifies whether the parameter is deprecated.
@override final  bool? deprecated;
/// Specifies the schema of the parameter's value (OpenAPI 3.0).
@override final  Schema? schema;
/// The data type of the parameter (OpenAPI 2.0).
@override final  String? type;
/// The format of the parameter's value (OpenAPI 2.0).
@override final  String? format;
/// The collection format for array parameters (OpenAPI 2.0).
@override final  String? collectionFormat;
/// For array types, describes the type of items in the array (OpenAPI 2.0).
@override final  Schema? items;
/// The maximum allowed value for a numeric parameter.
@override final  num? maximum;
/// The minimum allowed value for a numeric parameter.
@override final  num? minimum;
/// Specifies whether array or object parameters should be exploded.
@override final  bool? explode;
/// The default value for the parameter.
@override final  dynamic example;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParameterCopyWith<_Parameter> get copyWith => __$ParameterCopyWithImpl<_Parameter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParameterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Parameter&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.required, required) || other.required == required)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.collectionFormat, collectionFormat) || other.collectionFormat == collectionFormat)&&(identical(other.items, items) || other.items == items)&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum)&&(identical(other.explode, explode) || other.explode == explode)&&const DeepCollectionEquality().equals(other.example, example));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ref,name,location,description,required,deprecated,schema,type,format,collectionFormat,items,maximum,minimum,explode,const DeepCollectionEquality().hash(example));

@override
String toString() {
  return 'Parameter(ref: $ref, name: $name, location: $location, description: $description, required: $required, deprecated: $deprecated, schema: $schema, type: $type, format: $format, collectionFormat: $collectionFormat, items: $items, maximum: $maximum, minimum: $minimum, explode: $explode, example: $example)';
}


}

/// @nodoc
abstract mixin class _$ParameterCopyWith<$Res> implements $ParameterCopyWith<$Res> {
  factory _$ParameterCopyWith(_Parameter value, $Res Function(_Parameter) _then) = __$ParameterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: r'$ref') String? ref, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? description, bool? required, bool? deprecated, Schema? schema, String? type, String? format, String? collectionFormat, Schema? items, num? maximum, num? minimum, bool? explode, dynamic example
});


@override $SchemaCopyWith<$Res>? get schema;@override $SchemaCopyWith<$Res>? get items;

}
/// @nodoc
class __$ParameterCopyWithImpl<$Res>
    implements _$ParameterCopyWith<$Res> {
  __$ParameterCopyWithImpl(this._self, this._then);

  final _Parameter _self;
  final $Res Function(_Parameter) _then;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ref = freezed,Object? name = freezed,Object? location = freezed,Object? description = freezed,Object? required = freezed,Object? deprecated = freezed,Object? schema = freezed,Object? type = freezed,Object? format = freezed,Object? collectionFormat = freezed,Object? items = freezed,Object? maximum = freezed,Object? minimum = freezed,Object? explode = freezed,Object? example = freezed,}) {
  return _then(_Parameter(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,format: freezed == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String?,collectionFormat: freezed == collectionFormat ? _self.collectionFormat : collectionFormat // ignore: cast_nullable_to_non_nullable
as String?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as Schema?,maximum: freezed == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as num?,minimum: freezed == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as num?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchemaCopyWith<$Res>? get schema {
    if (_self.schema == null) {
    return null;
  }

  return $SchemaCopyWith<$Res>(_self.schema!, (value) {
    return _then(_self.copyWith(schema: value));
  });
}/// Create a copy of Parameter
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
}
}

// dart format on
