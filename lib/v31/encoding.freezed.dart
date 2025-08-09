// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encoding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Encoding {

/// The Content-Type for encoding a specific property.
 String? get contentType;/// A map allowing additional information to be provided as headers.
/// This field is ignored if the request body media type is not a multipart.
 Map<String, Header> get headers;/// Describes how a specific property value will be serialized.
 String? get style;/// When this is true, property values of type array or object
/// generate separate parameters for each value.
 bool? get explode;/// When this is true, parameter values are serialized using reserved
/// expansion as defined by RFC6570.
 bool? get allowReserved;/// The reference to the Encoding Object.
@JsonKey(name: r'$ref') String? get ref;
/// Create a copy of Encoding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncodingCopyWith<Encoding> get copyWith => _$EncodingCopyWithImpl<Encoding>(this as Encoding, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Encoding&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.style, style) || other.style == style)&&(identical(other.explode, explode) || other.explode == explode)&&(identical(other.allowReserved, allowReserved) || other.allowReserved == allowReserved)&&(identical(other.ref, ref) || other.ref == ref));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,const DeepCollectionEquality().hash(headers),style,explode,allowReserved,ref);

@override
String toString() {
  return 'Encoding(contentType: $contentType, headers: $headers, style: $style, explode: $explode, allowReserved: $allowReserved, ref: $ref)';
}


}

/// @nodoc
abstract mixin class $EncodingCopyWith<$Res>  {
  factory $EncodingCopyWith(Encoding value, $Res Function(Encoding) _then) = _$EncodingCopyWithImpl;
@useResult
$Res call({
 String? contentType, Map<String, Header> headers, String? style, bool? explode, bool? allowReserved,@JsonKey(name: r'$ref') String? ref
});




}
/// @nodoc
class _$EncodingCopyWithImpl<$Res>
    implements $EncodingCopyWith<$Res> {
  _$EncodingCopyWithImpl(this._self, this._then);

  final Encoding _self;
  final $Res Function(Encoding) _then;

/// Create a copy of Encoding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentType = freezed,Object? headers = null,Object? style = freezed,Object? explode = freezed,Object? allowReserved = freezed,Object? ref = freezed,}) {
  return _then(_self.copyWith(
contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,allowReserved: freezed == allowReserved ? _self.allowReserved : allowReserved // ignore: cast_nullable_to_non_nullable
as bool?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Encoding].
extension EncodingPatterns on Encoding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Encoding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Encoding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Encoding value)  $default,){
final _that = this;
switch (_that) {
case _Encoding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Encoding value)?  $default,){
final _that = this;
switch (_that) {
case _Encoding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? contentType,  Map<String, Header> headers,  String? style,  bool? explode,  bool? allowReserved, @JsonKey(name: r'$ref')  String? ref)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Encoding() when $default != null:
return $default(_that.contentType,_that.headers,_that.style,_that.explode,_that.allowReserved,_that.ref);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? contentType,  Map<String, Header> headers,  String? style,  bool? explode,  bool? allowReserved, @JsonKey(name: r'$ref')  String? ref)  $default,) {final _that = this;
switch (_that) {
case _Encoding():
return $default(_that.contentType,_that.headers,_that.style,_that.explode,_that.allowReserved,_that.ref);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? contentType,  Map<String, Header> headers,  String? style,  bool? explode,  bool? allowReserved, @JsonKey(name: r'$ref')  String? ref)?  $default,) {final _that = this;
switch (_that) {
case _Encoding() when $default != null:
return $default(_that.contentType,_that.headers,_that.style,_that.explode,_that.allowReserved,_that.ref);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Encoding extends Encoding {
  const _Encoding({this.contentType, final  Map<String, Header> headers = const {}, this.style, this.explode, this.allowReserved, @JsonKey(name: r'$ref') this.ref}): _headers = headers,super._();
  

/// The Content-Type for encoding a specific property.
@override final  String? contentType;
/// A map allowing additional information to be provided as headers.
/// This field is ignored if the request body media type is not a multipart.
 final  Map<String, Header> _headers;
/// A map allowing additional information to be provided as headers.
/// This field is ignored if the request body media type is not a multipart.
@override@JsonKey() Map<String, Header> get headers {
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_headers);
}

/// Describes how a specific property value will be serialized.
@override final  String? style;
/// When this is true, property values of type array or object
/// generate separate parameters for each value.
@override final  bool? explode;
/// When this is true, parameter values are serialized using reserved
/// expansion as defined by RFC6570.
@override final  bool? allowReserved;
/// The reference to the Encoding Object.
@override@JsonKey(name: r'$ref') final  String? ref;

/// Create a copy of Encoding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncodingCopyWith<_Encoding> get copyWith => __$EncodingCopyWithImpl<_Encoding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Encoding&&(identical(other.contentType, contentType) || other.contentType == contentType)&&const DeepCollectionEquality().equals(other._headers, _headers)&&(identical(other.style, style) || other.style == style)&&(identical(other.explode, explode) || other.explode == explode)&&(identical(other.allowReserved, allowReserved) || other.allowReserved == allowReserved)&&(identical(other.ref, ref) || other.ref == ref));
}


@override
int get hashCode => Object.hash(runtimeType,contentType,const DeepCollectionEquality().hash(_headers),style,explode,allowReserved,ref);

@override
String toString() {
  return 'Encoding(contentType: $contentType, headers: $headers, style: $style, explode: $explode, allowReserved: $allowReserved, ref: $ref)';
}


}

/// @nodoc
abstract mixin class _$EncodingCopyWith<$Res> implements $EncodingCopyWith<$Res> {
  factory _$EncodingCopyWith(_Encoding value, $Res Function(_Encoding) _then) = __$EncodingCopyWithImpl;
@override @useResult
$Res call({
 String? contentType, Map<String, Header> headers, String? style, bool? explode, bool? allowReserved,@JsonKey(name: r'$ref') String? ref
});




}
/// @nodoc
class __$EncodingCopyWithImpl<$Res>
    implements _$EncodingCopyWith<$Res> {
  __$EncodingCopyWithImpl(this._self, this._then);

  final _Encoding _self;
  final $Res Function(_Encoding) _then;

/// Create a copy of Encoding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentType = freezed,Object? headers = null,Object? style = freezed,Object? explode = freezed,Object? allowReserved = freezed,Object? ref = freezed,}) {
  return _then(_Encoding(
contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as String?,explode: freezed == explode ? _self.explode : explode // ignore: cast_nullable_to_non_nullable
as bool?,allowReserved: freezed == allowReserved ? _self.allowReserved : allowReserved // ignore: cast_nullable_to_non_nullable
as bool?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
