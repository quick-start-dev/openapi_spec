// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_docs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExternalDocs {

/// A short description of the external documentation.
 String get description;/// The URL for the external documentation.
 String get url;
/// Create a copy of ExternalDocs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalDocsCopyWith<ExternalDocs> get copyWith => _$ExternalDocsCopyWithImpl<ExternalDocs>(this as ExternalDocs, _$identity);

  /// Serializes this ExternalDocs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternalDocs&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,url);

@override
String toString() {
  return 'ExternalDocs(description: $description, url: $url)';
}


}

/// @nodoc
abstract mixin class $ExternalDocsCopyWith<$Res>  {
  factory $ExternalDocsCopyWith(ExternalDocs value, $Res Function(ExternalDocs) _then) = _$ExternalDocsCopyWithImpl;
@useResult
$Res call({
 String description, String url
});




}
/// @nodoc
class _$ExternalDocsCopyWithImpl<$Res>
    implements $ExternalDocsCopyWith<$Res> {
  _$ExternalDocsCopyWithImpl(this._self, this._then);

  final ExternalDocs _self;
  final $Res Function(ExternalDocs) _then;

/// Create a copy of ExternalDocs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? url = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExternalDocs].
extension ExternalDocsPatterns on ExternalDocs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExternalDocs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExternalDocs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExternalDocs value)  $default,){
final _that = this;
switch (_that) {
case _ExternalDocs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExternalDocs value)?  $default,){
final _that = this;
switch (_that) {
case _ExternalDocs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExternalDocs() when $default != null:
return $default(_that.description,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String url)  $default,) {final _that = this;
switch (_that) {
case _ExternalDocs():
return $default(_that.description,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String url)?  $default,) {final _that = this;
switch (_that) {
case _ExternalDocs() when $default != null:
return $default(_that.description,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExternalDocs implements ExternalDocs {
  const _ExternalDocs({this.description = '', this.url = ''});
  factory _ExternalDocs.fromJson(Map<String, dynamic> json) => _$ExternalDocsFromJson(json);

/// A short description of the external documentation.
@override@JsonKey() final  String description;
/// The URL for the external documentation.
@override@JsonKey() final  String url;

/// Create a copy of ExternalDocs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExternalDocsCopyWith<_ExternalDocs> get copyWith => __$ExternalDocsCopyWithImpl<_ExternalDocs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExternalDocsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExternalDocs&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,url);

@override
String toString() {
  return 'ExternalDocs(description: $description, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ExternalDocsCopyWith<$Res> implements $ExternalDocsCopyWith<$Res> {
  factory _$ExternalDocsCopyWith(_ExternalDocs value, $Res Function(_ExternalDocs) _then) = __$ExternalDocsCopyWithImpl;
@override @useResult
$Res call({
 String description, String url
});




}
/// @nodoc
class __$ExternalDocsCopyWithImpl<$Res>
    implements _$ExternalDocsCopyWith<$Res> {
  __$ExternalDocsCopyWithImpl(this._self, this._then);

  final _ExternalDocs _self;
  final $Res Function(_ExternalDocs) _then;

/// Create a copy of ExternalDocs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? url = null,}) {
  return _then(_ExternalDocs(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
