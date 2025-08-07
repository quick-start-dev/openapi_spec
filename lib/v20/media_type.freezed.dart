// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaType {

/// The schema for the content of the media type.
 Schema? get schema;
/// Create a copy of MediaType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaTypeCopyWith<MediaType> get copyWith => _$MediaTypeCopyWithImpl<MediaType>(this as MediaType, _$identity);

  /// Serializes this MediaType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaType&&(identical(other.schema, schema) || other.schema == schema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schema);

@override
String toString() {
  return 'MediaType(schema: $schema)';
}


}

/// @nodoc
abstract mixin class $MediaTypeCopyWith<$Res>  {
  factory $MediaTypeCopyWith(MediaType value, $Res Function(MediaType) _then) = _$MediaTypeCopyWithImpl;
@useResult
$Res call({
 Schema? schema
});


$SchemaCopyWith<$Res>? get schema;

}
/// @nodoc
class _$MediaTypeCopyWithImpl<$Res>
    implements $MediaTypeCopyWith<$Res> {
  _$MediaTypeCopyWithImpl(this._self, this._then);

  final MediaType _self;
  final $Res Function(MediaType) _then;

/// Create a copy of MediaType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schema = freezed,}) {
  return _then(_self.copyWith(
schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,
  ));
}
/// Create a copy of MediaType
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


/// Adds pattern-matching-related methods to [MediaType].
extension MediaTypePatterns on MediaType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaType value)  $default,){
final _that = this;
switch (_that) {
case _MediaType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaType value)?  $default,){
final _that = this;
switch (_that) {
case _MediaType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Schema? schema)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaType() when $default != null:
return $default(_that.schema);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Schema? schema)  $default,) {final _that = this;
switch (_that) {
case _MediaType():
return $default(_that.schema);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Schema? schema)?  $default,) {final _that = this;
switch (_that) {
case _MediaType() when $default != null:
return $default(_that.schema);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _MediaType implements MediaType {
  const _MediaType({this.schema});
  factory _MediaType.fromJson(Map<String, dynamic> json) => _$MediaTypeFromJson(json);

/// The schema for the content of the media type.
@override final  Schema? schema;

/// Create a copy of MediaType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaTypeCopyWith<_MediaType> get copyWith => __$MediaTypeCopyWithImpl<_MediaType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaType&&(identical(other.schema, schema) || other.schema == schema));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schema);

@override
String toString() {
  return 'MediaType(schema: $schema)';
}


}

/// @nodoc
abstract mixin class _$MediaTypeCopyWith<$Res> implements $MediaTypeCopyWith<$Res> {
  factory _$MediaTypeCopyWith(_MediaType value, $Res Function(_MediaType) _then) = __$MediaTypeCopyWithImpl;
@override @useResult
$Res call({
 Schema? schema
});


@override $SchemaCopyWith<$Res>? get schema;

}
/// @nodoc
class __$MediaTypeCopyWithImpl<$Res>
    implements _$MediaTypeCopyWith<$Res> {
  __$MediaTypeCopyWithImpl(this._self, this._then);

  final _MediaType _self;
  final $Res Function(_MediaType) _then;

/// Create a copy of MediaType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schema = freezed,}) {
  return _then(_MediaType(
schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as Schema?,
  ));
}

/// Create a copy of MediaType
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
