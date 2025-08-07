// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecurityScheme {

/// The type of the security scheme.
 String get type;/// A short description of the security scheme.
 String? get description;/// The name of the header, query, or cookie parameter to be used.
 String? get name;/// The location of the API key.
@JsonKey(name: 'in') ParameterLocation? get location;/// The name of the HTTP Authorization scheme to be used in
/// the Authorization header.
 String? get scheme;/// A hint to the client to identify the bearer token scheme.
 String? get bearerFormat;/// The flow used by the OAuth2 security scheme.
 String? get flow;/// The authorization URL to be used for this flow.
 String? get authorizationUrl;/// The available scopes for the OAuth2 flow.
 Map<String, String>? get scopes;
/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecuritySchemeCopyWith<SecurityScheme> get copyWith => _$SecuritySchemeCopyWithImpl<SecurityScheme>(this as SecurityScheme, _$identity);

  /// Serializes this SecurityScheme to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityScheme&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.bearerFormat, bearerFormat) || other.bearerFormat == bearerFormat)&&(identical(other.flow, flow) || other.flow == flow)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,name,location,scheme,bearerFormat,flow,authorizationUrl,const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'SecurityScheme(type: $type, description: $description, name: $name, location: $location, scheme: $scheme, bearerFormat: $bearerFormat, flow: $flow, authorizationUrl: $authorizationUrl, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $SecuritySchemeCopyWith<$Res>  {
  factory $SecuritySchemeCopyWith(SecurityScheme value, $Res Function(SecurityScheme) _then) = _$SecuritySchemeCopyWithImpl;
@useResult
$Res call({
 String type, String? description, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? scheme, String? bearerFormat, String? flow, String? authorizationUrl, Map<String, String>? scopes
});




}
/// @nodoc
class _$SecuritySchemeCopyWithImpl<$Res>
    implements $SecuritySchemeCopyWith<$Res> {
  _$SecuritySchemeCopyWithImpl(this._self, this._then);

  final SecurityScheme _self;
  final $Res Function(SecurityScheme) _then;

/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? description = freezed,Object? name = freezed,Object? location = freezed,Object? scheme = freezed,Object? bearerFormat = freezed,Object? flow = freezed,Object? authorizationUrl = freezed,Object? scopes = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,scheme: freezed == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String?,bearerFormat: freezed == bearerFormat ? _self.bearerFormat : bearerFormat // ignore: cast_nullable_to_non_nullable
as String?,flow: freezed == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as String?,authorizationUrl: freezed == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityScheme].
extension SecuritySchemePatterns on SecurityScheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityScheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityScheme value)  $default,){
final _that = this;
switch (_that) {
case _SecurityScheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityScheme value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  String? flow,  String? authorizationUrl,  Map<String, String>? scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flow,_that.authorizationUrl,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  String? flow,  String? authorizationUrl,  Map<String, String>? scopes)  $default,) {final _that = this;
switch (_that) {
case _SecurityScheme():
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flow,_that.authorizationUrl,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  String? flow,  String? authorizationUrl,  Map<String, String>? scopes)?  $default,) {final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flow,_that.authorizationUrl,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _SecurityScheme implements SecurityScheme {
  const _SecurityScheme({required this.type, this.description, this.name, @JsonKey(name: 'in') this.location, this.scheme, this.bearerFormat, this.flow, this.authorizationUrl, final  Map<String, String>? scopes}): _scopes = scopes;
  factory _SecurityScheme.fromJson(Map<String, dynamic> json) => _$SecuritySchemeFromJson(json);

/// The type of the security scheme.
@override final  String type;
/// A short description of the security scheme.
@override final  String? description;
/// The name of the header, query, or cookie parameter to be used.
@override final  String? name;
/// The location of the API key.
@override@JsonKey(name: 'in') final  ParameterLocation? location;
/// The name of the HTTP Authorization scheme to be used in
/// the Authorization header.
@override final  String? scheme;
/// A hint to the client to identify the bearer token scheme.
@override final  String? bearerFormat;
/// The flow used by the OAuth2 security scheme.
@override final  String? flow;
/// The authorization URL to be used for this flow.
@override final  String? authorizationUrl;
/// The available scopes for the OAuth2 flow.
 final  Map<String, String>? _scopes;
/// The available scopes for the OAuth2 flow.
@override Map<String, String>? get scopes {
  final value = _scopes;
  if (value == null) return null;
  if (_scopes is EqualUnmodifiableMapView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecuritySchemeCopyWith<_SecurityScheme> get copyWith => __$SecuritySchemeCopyWithImpl<_SecurityScheme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecuritySchemeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityScheme&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.bearerFormat, bearerFormat) || other.bearerFormat == bearerFormat)&&(identical(other.flow, flow) || other.flow == flow)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,name,location,scheme,bearerFormat,flow,authorizationUrl,const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'SecurityScheme(type: $type, description: $description, name: $name, location: $location, scheme: $scheme, bearerFormat: $bearerFormat, flow: $flow, authorizationUrl: $authorizationUrl, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$SecuritySchemeCopyWith<$Res> implements $SecuritySchemeCopyWith<$Res> {
  factory _$SecuritySchemeCopyWith(_SecurityScheme value, $Res Function(_SecurityScheme) _then) = __$SecuritySchemeCopyWithImpl;
@override @useResult
$Res call({
 String type, String? description, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? scheme, String? bearerFormat, String? flow, String? authorizationUrl, Map<String, String>? scopes
});




}
/// @nodoc
class __$SecuritySchemeCopyWithImpl<$Res>
    implements _$SecuritySchemeCopyWith<$Res> {
  __$SecuritySchemeCopyWithImpl(this._self, this._then);

  final _SecurityScheme _self;
  final $Res Function(_SecurityScheme) _then;

/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? description = freezed,Object? name = freezed,Object? location = freezed,Object? scheme = freezed,Object? bearerFormat = freezed,Object? flow = freezed,Object? authorizationUrl = freezed,Object? scopes = freezed,}) {
  return _then(_SecurityScheme(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,scheme: freezed == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String?,bearerFormat: freezed == bearerFormat ? _self.bearerFormat : bearerFormat // ignore: cast_nullable_to_non_nullable
as String?,flow: freezed == flow ? _self.flow : flow // ignore: cast_nullable_to_non_nullable
as String?,authorizationUrl: freezed == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
