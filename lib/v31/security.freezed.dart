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
@JsonKey(name: 'in') ParameterLocation? get location;/// The name of the HTTP Authentication scheme.
 String? get scheme;/// A hint to the client to identify the bearer token format.
 String? get bearerFormat;/// Configuration information for the flow types supported.
 OAuthFlows? get flows;/// Well-known URL to discover the OpenID Connect provider metadata.
 String? get openIdConnectUrl;/// A map of OpenAPI extensions.
@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? get extensions;
/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecuritySchemeCopyWith<SecurityScheme> get copyWith => _$SecuritySchemeCopyWithImpl<SecurityScheme>(this as SecurityScheme, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityScheme&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.bearerFormat, bearerFormat) || other.bearerFormat == bearerFormat)&&(identical(other.flows, flows) || other.flows == flows)&&(identical(other.openIdConnectUrl, openIdConnectUrl) || other.openIdConnectUrl == openIdConnectUrl)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,name,location,scheme,bearerFormat,flows,openIdConnectUrl,const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'SecurityScheme(type: $type, description: $description, name: $name, location: $location, scheme: $scheme, bearerFormat: $bearerFormat, flows: $flows, openIdConnectUrl: $openIdConnectUrl, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $SecuritySchemeCopyWith<$Res>  {
  factory $SecuritySchemeCopyWith(SecurityScheme value, $Res Function(SecurityScheme) _then) = _$SecuritySchemeCopyWithImpl;
@useResult
$Res call({
 String type, String? description, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? scheme, String? bearerFormat, OAuthFlows? flows, String? openIdConnectUrl,@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? extensions
});


$OAuthFlowsCopyWith<$Res>? get flows;

}
/// @nodoc
class _$SecuritySchemeCopyWithImpl<$Res>
    implements $SecuritySchemeCopyWith<$Res> {
  _$SecuritySchemeCopyWithImpl(this._self, this._then);

  final SecurityScheme _self;
  final $Res Function(SecurityScheme) _then;

/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? description = freezed,Object? name = freezed,Object? location = freezed,Object? scheme = freezed,Object? bearerFormat = freezed,Object? flows = freezed,Object? openIdConnectUrl = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,scheme: freezed == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String?,bearerFormat: freezed == bearerFormat ? _self.bearerFormat : bearerFormat // ignore: cast_nullable_to_non_nullable
as String?,flows: freezed == flows ? _self.flows : flows // ignore: cast_nullable_to_non_nullable
as OAuthFlows?,openIdConnectUrl: freezed == openIdConnectUrl ? _self.openIdConnectUrl : openIdConnectUrl // ignore: cast_nullable_to_non_nullable
as String?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowsCopyWith<$Res>? get flows {
    if (_self.flows == null) {
    return null;
  }

  return $OAuthFlowsCopyWith<$Res>(_self.flows!, (value) {
    return _then(_self.copyWith(flows: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  OAuthFlows? flows,  String? openIdConnectUrl, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flows,_that.openIdConnectUrl,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  OAuthFlows? flows,  String? openIdConnectUrl, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _SecurityScheme():
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flows,_that.openIdConnectUrl,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? description,  String? name, @JsonKey(name: 'in')  ParameterLocation? location,  String? scheme,  String? bearerFormat,  OAuthFlows? flows,  String? openIdConnectUrl, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _SecurityScheme() when $default != null:
return $default(_that.type,_that.description,_that.name,_that.location,_that.scheme,_that.bearerFormat,_that.flows,_that.openIdConnectUrl,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _SecurityScheme extends SecurityScheme {
  const _SecurityScheme({required this.type, this.description, this.name, @JsonKey(name: 'in') this.location, this.scheme, this.bearerFormat, this.flows, this.openIdConnectUrl, @JsonKey(includeToJson: false, includeFromJson: false) final  Map<String, dynamic>? extensions}): _extensions = extensions,super._();
  factory _SecurityScheme.fromJson(Map<String, dynamic> json) => _$SecuritySchemeFromJson(json);

/// The type of the security scheme.
@override final  String type;
/// A short description of the security scheme.
@override final  String? description;
/// The name of the header, query, or cookie parameter to be used.
@override final  String? name;
/// The location of the API key.
@override@JsonKey(name: 'in') final  ParameterLocation? location;
/// The name of the HTTP Authentication scheme.
@override final  String? scheme;
/// A hint to the client to identify the bearer token format.
@override final  String? bearerFormat;
/// Configuration information for the flow types supported.
@override final  OAuthFlows? flows;
/// Well-known URL to discover the OpenID Connect provider metadata.
@override final  String? openIdConnectUrl;
/// A map of OpenAPI extensions.
 final  Map<String, dynamic>? _extensions;
/// A map of OpenAPI extensions.
@override@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? get extensions {
  final value = _extensions;
  if (value == null) return null;
  if (_extensions is EqualUnmodifiableMapView) return _extensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecuritySchemeCopyWith<_SecurityScheme> get copyWith => __$SecuritySchemeCopyWithImpl<_SecurityScheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityScheme&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.bearerFormat, bearerFormat) || other.bearerFormat == bearerFormat)&&(identical(other.flows, flows) || other.flows == flows)&&(identical(other.openIdConnectUrl, openIdConnectUrl) || other.openIdConnectUrl == openIdConnectUrl)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description,name,location,scheme,bearerFormat,flows,openIdConnectUrl,const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'SecurityScheme(type: $type, description: $description, name: $name, location: $location, scheme: $scheme, bearerFormat: $bearerFormat, flows: $flows, openIdConnectUrl: $openIdConnectUrl, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$SecuritySchemeCopyWith<$Res> implements $SecuritySchemeCopyWith<$Res> {
  factory _$SecuritySchemeCopyWith(_SecurityScheme value, $Res Function(_SecurityScheme) _then) = __$SecuritySchemeCopyWithImpl;
@override @useResult
$Res call({
 String type, String? description, String? name,@JsonKey(name: 'in') ParameterLocation? location, String? scheme, String? bearerFormat, OAuthFlows? flows, String? openIdConnectUrl,@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? extensions
});


@override $OAuthFlowsCopyWith<$Res>? get flows;

}
/// @nodoc
class __$SecuritySchemeCopyWithImpl<$Res>
    implements _$SecuritySchemeCopyWith<$Res> {
  __$SecuritySchemeCopyWithImpl(this._self, this._then);

  final _SecurityScheme _self;
  final $Res Function(_SecurityScheme) _then;

/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? description = freezed,Object? name = freezed,Object? location = freezed,Object? scheme = freezed,Object? bearerFormat = freezed,Object? flows = freezed,Object? openIdConnectUrl = freezed,Object? extensions = freezed,}) {
  return _then(_SecurityScheme(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as ParameterLocation?,scheme: freezed == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String?,bearerFormat: freezed == bearerFormat ? _self.bearerFormat : bearerFormat // ignore: cast_nullable_to_non_nullable
as String?,flows: freezed == flows ? _self.flows : flows // ignore: cast_nullable_to_non_nullable
as OAuthFlows?,openIdConnectUrl: freezed == openIdConnectUrl ? _self.openIdConnectUrl : openIdConnectUrl // ignore: cast_nullable_to_non_nullable
as String?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of SecurityScheme
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowsCopyWith<$Res>? get flows {
    if (_self.flows == null) {
    return null;
  }

  return $OAuthFlowsCopyWith<$Res>(_self.flows!, (value) {
    return _then(_self.copyWith(flows: value));
  });
}
}


/// @nodoc
mixin _$OAuthFlow {

/// The available scopes for the OAuth2 security scheme.
 Map<String, String> get scopes;/// The authorization URL to be used for this flow.
 String? get authorizationUrl;/// The token URL to be used for this flow.
 String? get tokenUrl;/// The URL to be used for obtaining refresh tokens.
 String? get refreshUrl;
/// Create a copy of OAuthFlow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<OAuthFlow> get copyWith => _$OAuthFlowCopyWithImpl<OAuthFlow>(this as OAuthFlow, _$identity);

  /// Serializes this OAuthFlow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthFlow&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&(identical(other.tokenUrl, tokenUrl) || other.tokenUrl == tokenUrl)&&(identical(other.refreshUrl, refreshUrl) || other.refreshUrl == refreshUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(scopes),authorizationUrl,tokenUrl,refreshUrl);

@override
String toString() {
  return 'OAuthFlow(scopes: $scopes, authorizationUrl: $authorizationUrl, tokenUrl: $tokenUrl, refreshUrl: $refreshUrl)';
}


}

/// @nodoc
abstract mixin class $OAuthFlowCopyWith<$Res>  {
  factory $OAuthFlowCopyWith(OAuthFlow value, $Res Function(OAuthFlow) _then) = _$OAuthFlowCopyWithImpl;
@useResult
$Res call({
 Map<String, String> scopes, String? authorizationUrl, String? tokenUrl, String? refreshUrl
});




}
/// @nodoc
class _$OAuthFlowCopyWithImpl<$Res>
    implements $OAuthFlowCopyWith<$Res> {
  _$OAuthFlowCopyWithImpl(this._self, this._then);

  final OAuthFlow _self;
  final $Res Function(OAuthFlow) _then;

/// Create a copy of OAuthFlow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scopes = null,Object? authorizationUrl = freezed,Object? tokenUrl = freezed,Object? refreshUrl = freezed,}) {
  return _then(_self.copyWith(
scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as Map<String, String>,authorizationUrl: freezed == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String?,tokenUrl: freezed == tokenUrl ? _self.tokenUrl : tokenUrl // ignore: cast_nullable_to_non_nullable
as String?,refreshUrl: freezed == refreshUrl ? _self.refreshUrl : refreshUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OAuthFlow].
extension OAuthFlowPatterns on OAuthFlow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthFlow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthFlow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthFlow value)  $default,){
final _that = this;
switch (_that) {
case _OAuthFlow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthFlow value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthFlow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> scopes,  String? authorizationUrl,  String? tokenUrl,  String? refreshUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthFlow() when $default != null:
return $default(_that.scopes,_that.authorizationUrl,_that.tokenUrl,_that.refreshUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> scopes,  String? authorizationUrl,  String? tokenUrl,  String? refreshUrl)  $default,) {final _that = this;
switch (_that) {
case _OAuthFlow():
return $default(_that.scopes,_that.authorizationUrl,_that.tokenUrl,_that.refreshUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> scopes,  String? authorizationUrl,  String? tokenUrl,  String? refreshUrl)?  $default,) {final _that = this;
switch (_that) {
case _OAuthFlow() when $default != null:
return $default(_that.scopes,_that.authorizationUrl,_that.tokenUrl,_that.refreshUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _OAuthFlow implements OAuthFlow {
  const _OAuthFlow({required final  Map<String, String> scopes, this.authorizationUrl, this.tokenUrl, this.refreshUrl}): _scopes = scopes;
  factory _OAuthFlow.fromJson(Map<String, dynamic> json) => _$OAuthFlowFromJson(json);

/// The available scopes for the OAuth2 security scheme.
 final  Map<String, String> _scopes;
/// The available scopes for the OAuth2 security scheme.
@override Map<String, String> get scopes {
  if (_scopes is EqualUnmodifiableMapView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_scopes);
}

/// The authorization URL to be used for this flow.
@override final  String? authorizationUrl;
/// The token URL to be used for this flow.
@override final  String? tokenUrl;
/// The URL to be used for obtaining refresh tokens.
@override final  String? refreshUrl;

/// Create a copy of OAuthFlow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthFlowCopyWith<_OAuthFlow> get copyWith => __$OAuthFlowCopyWithImpl<_OAuthFlow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthFlowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthFlow&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&(identical(other.tokenUrl, tokenUrl) || other.tokenUrl == tokenUrl)&&(identical(other.refreshUrl, refreshUrl) || other.refreshUrl == refreshUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scopes),authorizationUrl,tokenUrl,refreshUrl);

@override
String toString() {
  return 'OAuthFlow(scopes: $scopes, authorizationUrl: $authorizationUrl, tokenUrl: $tokenUrl, refreshUrl: $refreshUrl)';
}


}

/// @nodoc
abstract mixin class _$OAuthFlowCopyWith<$Res> implements $OAuthFlowCopyWith<$Res> {
  factory _$OAuthFlowCopyWith(_OAuthFlow value, $Res Function(_OAuthFlow) _then) = __$OAuthFlowCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> scopes, String? authorizationUrl, String? tokenUrl, String? refreshUrl
});




}
/// @nodoc
class __$OAuthFlowCopyWithImpl<$Res>
    implements _$OAuthFlowCopyWith<$Res> {
  __$OAuthFlowCopyWithImpl(this._self, this._then);

  final _OAuthFlow _self;
  final $Res Function(_OAuthFlow) _then;

/// Create a copy of OAuthFlow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scopes = null,Object? authorizationUrl = freezed,Object? tokenUrl = freezed,Object? refreshUrl = freezed,}) {
  return _then(_OAuthFlow(
scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as Map<String, String>,authorizationUrl: freezed == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String?,tokenUrl: freezed == tokenUrl ? _self.tokenUrl : tokenUrl // ignore: cast_nullable_to_non_nullable
as String?,refreshUrl: freezed == refreshUrl ? _self.refreshUrl : refreshUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OAuthFlows {

/// Configuration for the OAuth Implicit flow.
 OAuthFlow? get implicit;/// Configuration for the OAuth Resource Owner Password flow.
 OAuthFlow? get password;/// Configuration for the OAuth Client Credentials flow.
 OAuthFlow? get clientCredentials;/// Configuration for the OAuth Authorization Code flow.
 OAuthFlow? get authorizationCode;
/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OAuthFlowsCopyWith<OAuthFlows> get copyWith => _$OAuthFlowsCopyWithImpl<OAuthFlows>(this as OAuthFlows, _$identity);

  /// Serializes this OAuthFlows to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OAuthFlows&&(identical(other.implicit, implicit) || other.implicit == implicit)&&(identical(other.password, password) || other.password == password)&&(identical(other.clientCredentials, clientCredentials) || other.clientCredentials == clientCredentials)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,implicit,password,clientCredentials,authorizationCode);

@override
String toString() {
  return 'OAuthFlows(implicit: $implicit, password: $password, clientCredentials: $clientCredentials, authorizationCode: $authorizationCode)';
}


}

/// @nodoc
abstract mixin class $OAuthFlowsCopyWith<$Res>  {
  factory $OAuthFlowsCopyWith(OAuthFlows value, $Res Function(OAuthFlows) _then) = _$OAuthFlowsCopyWithImpl;
@useResult
$Res call({
 OAuthFlow? implicit, OAuthFlow? password, OAuthFlow? clientCredentials, OAuthFlow? authorizationCode
});


$OAuthFlowCopyWith<$Res>? get implicit;$OAuthFlowCopyWith<$Res>? get password;$OAuthFlowCopyWith<$Res>? get clientCredentials;$OAuthFlowCopyWith<$Res>? get authorizationCode;

}
/// @nodoc
class _$OAuthFlowsCopyWithImpl<$Res>
    implements $OAuthFlowsCopyWith<$Res> {
  _$OAuthFlowsCopyWithImpl(this._self, this._then);

  final OAuthFlows _self;
  final $Res Function(OAuthFlows) _then;

/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? implicit = freezed,Object? password = freezed,Object? clientCredentials = freezed,Object? authorizationCode = freezed,}) {
  return _then(_self.copyWith(
implicit: freezed == implicit ? _self.implicit : implicit // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,clientCredentials: freezed == clientCredentials ? _self.clientCredentials : clientCredentials // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,
  ));
}
/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get implicit {
    if (_self.implicit == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.implicit!, (value) {
    return _then(_self.copyWith(implicit: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get password {
    if (_self.password == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.password!, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get clientCredentials {
    if (_self.clientCredentials == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.clientCredentials!, (value) {
    return _then(_self.copyWith(clientCredentials: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get authorizationCode {
    if (_self.authorizationCode == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.authorizationCode!, (value) {
    return _then(_self.copyWith(authorizationCode: value));
  });
}
}


/// Adds pattern-matching-related methods to [OAuthFlows].
extension OAuthFlowsPatterns on OAuthFlows {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OAuthFlows value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OAuthFlows() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OAuthFlows value)  $default,){
final _that = this;
switch (_that) {
case _OAuthFlows():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OAuthFlows value)?  $default,){
final _that = this;
switch (_that) {
case _OAuthFlows() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OAuthFlow? implicit,  OAuthFlow? password,  OAuthFlow? clientCredentials,  OAuthFlow? authorizationCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OAuthFlows() when $default != null:
return $default(_that.implicit,_that.password,_that.clientCredentials,_that.authorizationCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OAuthFlow? implicit,  OAuthFlow? password,  OAuthFlow? clientCredentials,  OAuthFlow? authorizationCode)  $default,) {final _that = this;
switch (_that) {
case _OAuthFlows():
return $default(_that.implicit,_that.password,_that.clientCredentials,_that.authorizationCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OAuthFlow? implicit,  OAuthFlow? password,  OAuthFlow? clientCredentials,  OAuthFlow? authorizationCode)?  $default,) {final _that = this;
switch (_that) {
case _OAuthFlows() when $default != null:
return $default(_that.implicit,_that.password,_that.clientCredentials,_that.authorizationCode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _OAuthFlows implements OAuthFlows {
  const _OAuthFlows({this.implicit, this.password, this.clientCredentials, this.authorizationCode});
  factory _OAuthFlows.fromJson(Map<String, dynamic> json) => _$OAuthFlowsFromJson(json);

/// Configuration for the OAuth Implicit flow.
@override final  OAuthFlow? implicit;
/// Configuration for the OAuth Resource Owner Password flow.
@override final  OAuthFlow? password;
/// Configuration for the OAuth Client Credentials flow.
@override final  OAuthFlow? clientCredentials;
/// Configuration for the OAuth Authorization Code flow.
@override final  OAuthFlow? authorizationCode;

/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OAuthFlowsCopyWith<_OAuthFlows> get copyWith => __$OAuthFlowsCopyWithImpl<_OAuthFlows>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OAuthFlowsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OAuthFlows&&(identical(other.implicit, implicit) || other.implicit == implicit)&&(identical(other.password, password) || other.password == password)&&(identical(other.clientCredentials, clientCredentials) || other.clientCredentials == clientCredentials)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,implicit,password,clientCredentials,authorizationCode);

@override
String toString() {
  return 'OAuthFlows(implicit: $implicit, password: $password, clientCredentials: $clientCredentials, authorizationCode: $authorizationCode)';
}


}

/// @nodoc
abstract mixin class _$OAuthFlowsCopyWith<$Res> implements $OAuthFlowsCopyWith<$Res> {
  factory _$OAuthFlowsCopyWith(_OAuthFlows value, $Res Function(_OAuthFlows) _then) = __$OAuthFlowsCopyWithImpl;
@override @useResult
$Res call({
 OAuthFlow? implicit, OAuthFlow? password, OAuthFlow? clientCredentials, OAuthFlow? authorizationCode
});


@override $OAuthFlowCopyWith<$Res>? get implicit;@override $OAuthFlowCopyWith<$Res>? get password;@override $OAuthFlowCopyWith<$Res>? get clientCredentials;@override $OAuthFlowCopyWith<$Res>? get authorizationCode;

}
/// @nodoc
class __$OAuthFlowsCopyWithImpl<$Res>
    implements _$OAuthFlowsCopyWith<$Res> {
  __$OAuthFlowsCopyWithImpl(this._self, this._then);

  final _OAuthFlows _self;
  final $Res Function(_OAuthFlows) _then;

/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? implicit = freezed,Object? password = freezed,Object? clientCredentials = freezed,Object? authorizationCode = freezed,}) {
  return _then(_OAuthFlows(
implicit: freezed == implicit ? _self.implicit : implicit // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,clientCredentials: freezed == clientCredentials ? _self.clientCredentials : clientCredentials // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as OAuthFlow?,
  ));
}

/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get implicit {
    if (_self.implicit == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.implicit!, (value) {
    return _then(_self.copyWith(implicit: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get password {
    if (_self.password == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.password!, (value) {
    return _then(_self.copyWith(password: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get clientCredentials {
    if (_self.clientCredentials == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.clientCredentials!, (value) {
    return _then(_self.copyWith(clientCredentials: value));
  });
}/// Create a copy of OAuthFlows
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OAuthFlowCopyWith<$Res>? get authorizationCode {
    if (_self.authorizationCode == null) {
    return null;
  }

  return $OAuthFlowCopyWith<$Res>(_self.authorizationCode!, (value) {
    return _then(_self.copyWith(authorizationCode: value));
  });
}
}

// dart format on
