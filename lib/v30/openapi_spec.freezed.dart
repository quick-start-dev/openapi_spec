// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openapi_spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenAPI {

/// The version of the OpenAPI specification.
/// A semver string which MUST begin with 3.0.
 String get openapi;/// Metadata about the API.
 Info? get info;/// An array of Server Objects, which provide connectivity information
/// to a target server.
 List<Server> get servers;/// The available paths and their operations.
 Map<String, PathItem> get paths;/// An element to hold reusable objects for the specification.
 Components? get components;/// A declaration of which security schemes are required for the entire API.
 List<SecurityRequirement> get security;/// A list of tags for API documentation.
 List<Tag> get tags;/// Additional external documentation for the API.
 ExternalDocs? get externalDocs;/// A map of OpenAPI extensions.
 Map<String, dynamic>? get extensions;
/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAPICopyWith<OpenAPI> get copyWith => _$OpenAPICopyWithImpl<OpenAPI>(this as OpenAPI, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAPI&&(identical(other.openapi, openapi) || other.openapi == openapi)&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.servers, servers)&&const DeepCollectionEquality().equals(other.paths, paths)&&(identical(other.components, components) || other.components == components)&&const DeepCollectionEquality().equals(other.security, security)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openapi,info,const DeepCollectionEquality().hash(servers),const DeepCollectionEquality().hash(paths),components,const DeepCollectionEquality().hash(security),const DeepCollectionEquality().hash(tags),externalDocs,const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'OpenAPI(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components, security: $security, tags: $tags, externalDocs: $externalDocs, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $OpenAPICopyWith<$Res>  {
  factory $OpenAPICopyWith(OpenAPI value, $Res Function(OpenAPI) _then) = _$OpenAPICopyWithImpl;
@useResult
$Res call({
 String openapi, Info? info, List<Server> servers, Map<String, PathItem> paths, Components? components, List<SecurityRequirement> security, List<Tag> tags, ExternalDocs? externalDocs, Map<String, dynamic>? extensions
});


$InfoCopyWith<$Res>? get info;$ComponentsCopyWith<$Res>? get components;$ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class _$OpenAPICopyWithImpl<$Res>
    implements $OpenAPICopyWith<$Res> {
  _$OpenAPICopyWithImpl(this._self, this._then);

  final OpenAPI _self;
  final $Res Function(OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openapi = null,Object? info = freezed,Object? servers = null,Object? paths = null,Object? components = freezed,Object? security = null,Object? tags = null,Object? externalDocs = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
openapi: null == openapi ? _self.openapi : openapi // ignore: cast_nullable_to_non_nullable
as String,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,servers: null == servers ? _self.servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>,paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,components: freezed == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as Components?,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentsCopyWith<$Res>? get components {
    if (_self.components == null) {
    return null;
  }

  return $ComponentsCopyWith<$Res>(_self.components!, (value) {
    return _then(_self.copyWith(components: value));
  });
}/// Create a copy of OpenAPI
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
}
}


/// Adds pattern-matching-related methods to [OpenAPI].
extension OpenAPIPatterns on OpenAPI {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAPI value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAPI value)  $default,){
final _that = this;
switch (_that) {
case _OpenAPI():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAPI value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String openapi,  Info? info,  List<Server> servers,  Map<String, PathItem> paths,  Components? components,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.openapi,_that.info,_that.servers,_that.paths,_that.components,_that.security,_that.tags,_that.externalDocs,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String openapi,  Info? info,  List<Server> servers,  Map<String, PathItem> paths,  Components? components,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _OpenAPI():
return $default(_that.openapi,_that.info,_that.servers,_that.paths,_that.components,_that.security,_that.tags,_that.externalDocs,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String openapi,  Info? info,  List<Server> servers,  Map<String, PathItem> paths,  Components? components,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.openapi,_that.info,_that.servers,_that.paths,_that.components,_that.security,_that.tags,_that.externalDocs,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _OpenAPI extends OpenAPI {
  const _OpenAPI({this.openapi = '3.0.0', this.info, final  List<Server> servers = const [], final  Map<String, PathItem> paths = const {}, this.components, final  List<SecurityRequirement> security = const [], final  List<Tag> tags = const [], this.externalDocs, final  Map<String, dynamic>? extensions}): _servers = servers,_paths = paths,_security = security,_tags = tags,_extensions = extensions,super._();
  factory _OpenAPI.fromJson(Map<String, dynamic> json) => _$OpenAPIFromJson(json);

/// The version of the OpenAPI specification.
/// A semver string which MUST begin with 3.0.
@override@JsonKey() final  String openapi;
/// Metadata about the API.
@override final  Info? info;
/// An array of Server Objects, which provide connectivity information
/// to a target server.
 final  List<Server> _servers;
/// An array of Server Objects, which provide connectivity information
/// to a target server.
@override@JsonKey() List<Server> get servers {
  if (_servers is EqualUnmodifiableListView) return _servers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_servers);
}

/// The available paths and their operations.
 final  Map<String, PathItem> _paths;
/// The available paths and their operations.
@override@JsonKey() Map<String, PathItem> get paths {
  if (_paths is EqualUnmodifiableMapView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paths);
}

/// An element to hold reusable objects for the specification.
@override final  Components? components;
/// A declaration of which security schemes are required for the entire API.
 final  List<SecurityRequirement> _security;
/// A declaration of which security schemes are required for the entire API.
@override@JsonKey() List<SecurityRequirement> get security {
  if (_security is EqualUnmodifiableListView) return _security;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_security);
}

/// A list of tags for API documentation.
 final  List<Tag> _tags;
/// A list of tags for API documentation.
@override@JsonKey() List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// Additional external documentation for the API.
@override final  ExternalDocs? externalDocs;
/// A map of OpenAPI extensions.
 final  Map<String, dynamic>? _extensions;
/// A map of OpenAPI extensions.
@override Map<String, dynamic>? get extensions {
  final value = _extensions;
  if (value == null) return null;
  if (_extensions is EqualUnmodifiableMapView) return _extensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAPICopyWith<_OpenAPI> get copyWith => __$OpenAPICopyWithImpl<_OpenAPI>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAPI&&(identical(other.openapi, openapi) || other.openapi == openapi)&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._servers, _servers)&&const DeepCollectionEquality().equals(other._paths, _paths)&&(identical(other.components, components) || other.components == components)&&const DeepCollectionEquality().equals(other._security, _security)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openapi,info,const DeepCollectionEquality().hash(_servers),const DeepCollectionEquality().hash(_paths),components,const DeepCollectionEquality().hash(_security),const DeepCollectionEquality().hash(_tags),externalDocs,const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'OpenAPI(openapi: $openapi, info: $info, servers: $servers, paths: $paths, components: $components, security: $security, tags: $tags, externalDocs: $externalDocs, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$OpenAPICopyWith<$Res> implements $OpenAPICopyWith<$Res> {
  factory _$OpenAPICopyWith(_OpenAPI value, $Res Function(_OpenAPI) _then) = __$OpenAPICopyWithImpl;
@override @useResult
$Res call({
 String openapi, Info? info, List<Server> servers, Map<String, PathItem> paths, Components? components, List<SecurityRequirement> security, List<Tag> tags, ExternalDocs? externalDocs, Map<String, dynamic>? extensions
});


@override $InfoCopyWith<$Res>? get info;@override $ComponentsCopyWith<$Res>? get components;@override $ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class __$OpenAPICopyWithImpl<$Res>
    implements _$OpenAPICopyWith<$Res> {
  __$OpenAPICopyWithImpl(this._self, this._then);

  final _OpenAPI _self;
  final $Res Function(_OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openapi = null,Object? info = freezed,Object? servers = null,Object? paths = null,Object? components = freezed,Object? security = null,Object? tags = null,Object? externalDocs = freezed,Object? extensions = freezed,}) {
  return _then(_OpenAPI(
openapi: null == openapi ? _self.openapi : openapi // ignore: cast_nullable_to_non_nullable
as String,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,servers: null == servers ? _self._servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>,paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,components: freezed == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as Components?,security: null == security ? _self._security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentsCopyWith<$Res>? get components {
    if (_self.components == null) {
    return null;
  }

  return $ComponentsCopyWith<$Res>(_self.components!, (value) {
    return _then(_self.copyWith(components: value));
  });
}/// Create a copy of OpenAPI
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
}
}

// dart format on
