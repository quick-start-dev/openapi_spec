// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Header {

/// A brief description of the header.
 String? get description;/// Determines whether this header is mandatory. Default is false.
 bool? get required;/// Specifies that the header is deprecated and
/// SHOULD be transitioned out of usage. Default is false.
 bool? get deprecated;/// Describes how the header value will be serialized.
/// Only "simple" is allowed for headers.
 String? get style;/// When true, header values of type array or
/// object generate a single header whose value is a comma-separated list.
 bool? get explode;/// The schema defining the type used for the header.
 Schema? get schema;/// Example of the header's potential value.
 dynamic get example;/// Examples of the header's potential value.
 Map<String, Example>? get examples;/// A map containing the representations for the header.
/// Must only contain one entry.
 Map<String, MediaType>? get content;/// Reference to a header object.
@JsonKey(name: r'$ref') String? get ref;
/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderCopyWith<Header> get copyWith => _$HeaderCopyWithImpl<Header>(this as Header, _$identity);

  /// Serializes this Header to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Header&&(identical(other.description, description) || other.description == description)&&(identical(other.required, required) || other.required == required)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&(identical(other.style, style) || other.style == style)&&(identical(other.explode, explode) || other.explode == explode)&&(identical(other.schema, schema) || other.schema == schema)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other.examples, examples)&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.ref, ref) || other.ref == ref));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,required,deprecated,style,explode,schema,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(examples),const DeepCollectionEquality().hash(content),ref);

@override
String toString() {
  return 'Header(description: $description, required: $required, deprecated: $deprecated, style: $style, explode: $explode, schema: $schema, example: $example, examples: $examples, content: $content, ref: $ref)';
}


}

/// @nodoc
abstract mixin class $HeaderCopyWith<$Res>  {
  factory $HeaderCopyWith(Header value, $Res Function(Header) _then) = _$HeaderCopyWithImpl;
@useResult
$Res call({
 String? description, bool? required, bool? deprecated, String? style, bool? explode, Schema? schema, dynamic example, Map<String, Example>? examples, Map<String, MediaType>? content,@JsonKey(name: r'$ref') String? ref
});


$SchemaCopyWith<$Res>? get schema;

}
/// @nodoc
class _$HeaderCopyWithImpl<$Res>
    implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._self, this._then);

  final Header _self;
  final $Res Function(Header) _then;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? required = freezed,Object? deprecated = freezed,Object? style = freezed,Object? explode = freezed,Object? schema = freezed,Object? example = freezed,Object? examples = freezed,Object? content = freezed,Object? ref = freezed,}) {
  return _then(_self.copyWith(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,examples: freezed == examples ? _self.examples : examples // ignore: cast_nullable_to_non_nullable
as Map<String, Example>?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Map<String, MediaType>?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Header
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
}
}


/// Adds pattern-matching-related methods to [Header].
extension HeaderPatterns on Header {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Header value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Header() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Header value)  $default,){
final _that = this;
switch (_that) {
case _Header():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Header value)?  $default,){
final _that = this;
switch (_that) {
case _Header() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  bool? required,  bool? deprecated,  String? style,  bool? explode,  Schema? schema,  dynamic example,  Map<String, Example>? examples,  Map<String, MediaType>? content, @JsonKey(name: r'$ref')  String? ref)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Header() when $default != null:
return $default(_that.description,_that.required,_that.deprecated,_that.style,_that.explode,_that.schema,_that.example,_that.examples,_that.content,_that.ref);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  bool? required,  bool? deprecated,  String? style,  bool? explode,  Schema? schema,  dynamic example,  Map<String, Example>? examples,  Map<String, MediaType>? content, @JsonKey(name: r'$ref')  String? ref)  $default,) {final _that = this;
switch (_that) {
case _Header():
return $default(_that.description,_that.required,_that.deprecated,_that.style,_that.explode,_that.schema,_that.example,_that.examples,_that.content,_that.ref);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  bool? required,  bool? deprecated,  String? style,  bool? explode,  Schema? schema,  dynamic example,  Map<String, Example>? examples,  Map<String, MediaType>? content, @JsonKey(name: r'$ref')  String? ref)?  $default,) {final _that = this;
switch (_that) {
case _Header() when $default != null:
return $default(_that.description,_that.required,_that.deprecated,_that.style,_that.explode,_that.schema,_that.example,_that.examples,_that.content,_that.ref);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Header implements Header {
  const _Header({this.description, this.required, this.deprecated, this.style, this.explode, this.schema, this.example, final  Map<String, Example>? examples, final  Map<String, MediaType>? content, @JsonKey(name: r'$ref') this.ref}): _examples = examples,_content = content;
  factory _Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

/// A brief description of the header.
@override final  String? description;
/// Determines whether this header is mandatory. Default is false.
@override final  bool? required;
/// Specifies that the header is deprecated and
/// SHOULD be transitioned out of usage. Default is false.
@override final  bool? deprecated;
/// Describes how the header value will be serialized.
/// Only "simple" is allowed for headers.
@override final  String? style;
/// When true, header values of type array or
/// object generate a single header whose value is a comma-separated list.
@override final  bool? explode;
/// The schema defining the type used for the header.
@override final  Schema? schema;
/// Example of the header's potential value.
@override final  dynamic example;
/// Examples of the header's potential value.
 final  Map<String, Example>? _examples;
/// Examples of the header's potential value.
@override Map<String, Example>? get examples {
  final value = _examples;
  if (value == null) return null;
  if (_examples is EqualUnmodifiableMapView) return _examples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A map containing the representations for the header.
/// Must only contain one entry.
 final  Map<String, MediaType>? _content;
/// A map containing the representations for the header.
/// Must only contain one entry.
@override Map<String, MediaType>? get content {
  final value = _content;
  if (value == null) return null;
  if (_content is EqualUnmodifiableMapView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Reference to a header object.
@override@JsonKey(name: r'$ref') final  String? ref;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderCopyWith<_Header> get copyWith => __$HeaderCopyWithImpl<_Header>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Header&&(identical(other.description, description) || other.description == description)&&(identical(other.required, required) || other.required == required)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&(identical(other.style, style) || other.style == style)&&(identical(other.explode, explode) || other.explode == explode)&&(identical(other.schema, schema) || other.schema == schema)&&const DeepCollectionEquality().equals(other.example, example)&&const DeepCollectionEquality().equals(other._examples, _examples)&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.ref, ref) || other.ref == ref));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,required,deprecated,style,explode,schema,const DeepCollectionEquality().hash(example),const DeepCollectionEquality().hash(_examples),const DeepCollectionEquality().hash(_content),ref);

@override
String toString() {
  return 'Header(description: $description, required: $required, deprecated: $deprecated, style: $style, explode: $explode, schema: $schema, example: $example, examples: $examples, content: $content, ref: $ref)';
}


}

/// @nodoc
abstract mixin class _$HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) _then) = __$HeaderCopyWithImpl;
@override @useResult
$Res call({
 String? description, bool? required, bool? deprecated, String? style, bool? explode, Schema? schema, dynamic example, Map<String, Example>? examples, Map<String, MediaType>? content,@JsonKey(name: r'$ref') String? ref
});


@override $SchemaCopyWith<$Res>? get schema;

}
/// @nodoc
class __$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(this._self, this._then);

  final _Header _self;
  final $Res Function(_Header) _then;

/// Create a copy of Header
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? required = freezed,Object? deprecated = freezed,Object? style = freezed,Object? explode = freezed,Object? schema = freezed,Object? example = freezed,Object? examples = freezed,Object? content = freezed,Object? ref = freezed,}) {
  return _then(_Header(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as dynamic,examples: freezed == examples ? _self._examples : examples // ignore: cast_nullable_to_non_nullable
as Map<String, Example>?,content: freezed == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as Map<String, MediaType>?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Header
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
}
}

// dart format on
