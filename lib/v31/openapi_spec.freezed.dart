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

/// Provides metadata about the API.
 Info get info;/// This string MUST be the semantic version number of the OpenAPI
/// Specification version that the OpenAPI document uses.
 String get openapi;/// An array of Server Objects, which provide connectivity information \
/// to a target server.
 List<Server>? get servers;/// The available paths and operations for the API.
 Map<String, PathItem> get paths;/// An element to hold reusable objects for the specification.
 Components? get components;/// The default value for the $schema keyword within Schema Objects
/// contained within this OAS document. This MUST be in the form of a URI.
 String? get jsonSchemaDialect;/// A declaration of which security schemes are applied to the API
/// as a whole.
 List<SecurityRequirement> get security;/// A list of tags for API documentation control.
 List<Tag> get tags;/// Additional external documentation.
 ExternalDocs? get externalDocs;/// The incoming webhooks that MAY be received by the API.
 Map<String, PathItem> get webhooks;/// A map of OpenAPI extensions.
 Map<String, dynamic>? get extensions;
/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAPICopyWith<OpenAPI> get copyWith => _$OpenAPICopyWithImpl<OpenAPI>(this as OpenAPI, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAPI&&(identical(other.info, info) || other.info == info)&&(identical(other.openapi, openapi) || other.openapi == openapi)&&const DeepCollectionEquality().equals(other.servers, servers)&&const DeepCollectionEquality().equals(other.paths, paths)&&(identical(other.components, components) || other.components == components)&&(identical(other.jsonSchemaDialect, jsonSchemaDialect) || other.jsonSchemaDialect == jsonSchemaDialect)&&const DeepCollectionEquality().equals(other.security, security)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other.webhooks, webhooks)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,openapi,const DeepCollectionEquality().hash(servers),const DeepCollectionEquality().hash(paths),components,jsonSchemaDialect,const DeepCollectionEquality().hash(security),const DeepCollectionEquality().hash(tags),externalDocs,const DeepCollectionEquality().hash(webhooks),const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'OpenAPI(info: $info, openapi: $openapi, servers: $servers, paths: $paths, components: $components, jsonSchemaDialect: $jsonSchemaDialect, security: $security, tags: $tags, externalDocs: $externalDocs, webhooks: $webhooks, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $OpenAPICopyWith<$Res>  {
  factory $OpenAPICopyWith(OpenAPI value, $Res Function(OpenAPI) _then) = _$OpenAPICopyWithImpl;
@useResult
$Res call({
 Info info, String openapi, List<Server>? servers, Map<String, PathItem> paths, Components? components, String? jsonSchemaDialect, List<SecurityRequirement> security, List<Tag> tags, ExternalDocs? externalDocs, Map<String, PathItem> webhooks, Map<String, dynamic>? extensions
});


$InfoCopyWith<$Res> get info;$ComponentsCopyWith<$Res>? get components;$ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class _$OpenAPICopyWithImpl<$Res>
    implements $OpenAPICopyWith<$Res> {
  _$OpenAPICopyWithImpl(this._self, this._then);

  final OpenAPI _self;
  final $Res Function(OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? openapi = null,Object? servers = freezed,Object? paths = null,Object? components = freezed,Object? jsonSchemaDialect = freezed,Object? security = null,Object? tags = null,Object? externalDocs = freezed,Object? webhooks = null,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info,openapi: null == openapi ? _self.openapi : openapi // ignore: cast_nullable_to_non_nullable
as String,servers: freezed == servers ? _self.servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>?,paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,components: freezed == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as Components?,jsonSchemaDialect: freezed == jsonSchemaDialect ? _self.jsonSchemaDialect : jsonSchemaDialect // ignore: cast_nullable_to_non_nullable
as String?,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,webhooks: null == webhooks ? _self.webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res> get info {
  
  return $InfoCopyWith<$Res>(_self.info, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Info info,  String openapi,  List<Server>? servers,  Map<String, PathItem> paths,  Components? components,  String? jsonSchemaDialect,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, PathItem> webhooks,  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.info,_that.openapi,_that.servers,_that.paths,_that.components,_that.jsonSchemaDialect,_that.security,_that.tags,_that.externalDocs,_that.webhooks,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Info info,  String openapi,  List<Server>? servers,  Map<String, PathItem> paths,  Components? components,  String? jsonSchemaDialect,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, PathItem> webhooks,  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _OpenAPI():
return $default(_that.info,_that.openapi,_that.servers,_that.paths,_that.components,_that.jsonSchemaDialect,_that.security,_that.tags,_that.externalDocs,_that.webhooks,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Info info,  String openapi,  List<Server>? servers,  Map<String, PathItem> paths,  Components? components,  String? jsonSchemaDialect,  List<SecurityRequirement> security,  List<Tag> tags,  ExternalDocs? externalDocs,  Map<String, PathItem> webhooks,  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.info,_that.openapi,_that.servers,_that.paths,_that.components,_that.jsonSchemaDialect,_that.security,_that.tags,_that.externalDocs,_that.webhooks,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _OpenAPI extends OpenAPI {
  const _OpenAPI({required this.info, required this.openapi, final  List<Server>? servers, final  Map<String, PathItem> paths = const {}, this.components, this.jsonSchemaDialect, final  List<SecurityRequirement> security = const [], final  List<Tag> tags = const [], this.externalDocs, final  Map<String, PathItem> webhooks = const {}, final  Map<String, dynamic>? extensions}): _servers = servers,_paths = paths,_security = security,_tags = tags,_webhooks = webhooks,_extensions = extensions,super._();
  factory _OpenAPI.fromJson(Map<String, dynamic> json) => _$OpenAPIFromJson(json);

/// Provides metadata about the API.
@override final  Info info;
/// This string MUST be the semantic version number of the OpenAPI
/// Specification version that the OpenAPI document uses.
@override final  String openapi;
/// An array of Server Objects, which provide connectivity information \
/// to a target server.
 final  List<Server>? _servers;
/// An array of Server Objects, which provide connectivity information \
/// to a target server.
@override List<Server>? get servers {
  final value = _servers;
  if (value == null) return null;
  if (_servers is EqualUnmodifiableListView) return _servers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The available paths and operations for the API.
 final  Map<String, PathItem> _paths;
/// The available paths and operations for the API.
@override@JsonKey() Map<String, PathItem> get paths {
  if (_paths is EqualUnmodifiableMapView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paths);
}

/// An element to hold reusable objects for the specification.
@override final  Components? components;
/// The default value for the $schema keyword within Schema Objects
/// contained within this OAS document. This MUST be in the form of a URI.
@override final  String? jsonSchemaDialect;
/// A declaration of which security schemes are applied to the API
/// as a whole.
 final  List<SecurityRequirement> _security;
/// A declaration of which security schemes are applied to the API
/// as a whole.
@override@JsonKey() List<SecurityRequirement> get security {
  if (_security is EqualUnmodifiableListView) return _security;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_security);
}

/// A list of tags for API documentation control.
 final  List<Tag> _tags;
/// A list of tags for API documentation control.
@override@JsonKey() List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// Additional external documentation.
@override final  ExternalDocs? externalDocs;
/// The incoming webhooks that MAY be received by the API.
 final  Map<String, PathItem> _webhooks;
/// The incoming webhooks that MAY be received by the API.
@override@JsonKey() Map<String, PathItem> get webhooks {
  if (_webhooks is EqualUnmodifiableMapView) return _webhooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_webhooks);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAPI&&(identical(other.info, info) || other.info == info)&&(identical(other.openapi, openapi) || other.openapi == openapi)&&const DeepCollectionEquality().equals(other._servers, _servers)&&const DeepCollectionEquality().equals(other._paths, _paths)&&(identical(other.components, components) || other.components == components)&&(identical(other.jsonSchemaDialect, jsonSchemaDialect) || other.jsonSchemaDialect == jsonSchemaDialect)&&const DeepCollectionEquality().equals(other._security, _security)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other._webhooks, _webhooks)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,openapi,const DeepCollectionEquality().hash(_servers),const DeepCollectionEquality().hash(_paths),components,jsonSchemaDialect,const DeepCollectionEquality().hash(_security),const DeepCollectionEquality().hash(_tags),externalDocs,const DeepCollectionEquality().hash(_webhooks),const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'OpenAPI(info: $info, openapi: $openapi, servers: $servers, paths: $paths, components: $components, jsonSchemaDialect: $jsonSchemaDialect, security: $security, tags: $tags, externalDocs: $externalDocs, webhooks: $webhooks, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$OpenAPICopyWith<$Res> implements $OpenAPICopyWith<$Res> {
  factory _$OpenAPICopyWith(_OpenAPI value, $Res Function(_OpenAPI) _then) = __$OpenAPICopyWithImpl;
@override @useResult
$Res call({
 Info info, String openapi, List<Server>? servers, Map<String, PathItem> paths, Components? components, String? jsonSchemaDialect, List<SecurityRequirement> security, List<Tag> tags, ExternalDocs? externalDocs, Map<String, PathItem> webhooks, Map<String, dynamic>? extensions
});


@override $InfoCopyWith<$Res> get info;@override $ComponentsCopyWith<$Res>? get components;@override $ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class __$OpenAPICopyWithImpl<$Res>
    implements _$OpenAPICopyWith<$Res> {
  __$OpenAPICopyWithImpl(this._self, this._then);

  final _OpenAPI _self;
  final $Res Function(_OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? openapi = null,Object? servers = freezed,Object? paths = null,Object? components = freezed,Object? jsonSchemaDialect = freezed,Object? security = null,Object? tags = null,Object? externalDocs = freezed,Object? webhooks = null,Object? extensions = freezed,}) {
  return _then(_OpenAPI(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info,openapi: null == openapi ? _self.openapi : openapi // ignore: cast_nullable_to_non_nullable
as String,servers: freezed == servers ? _self._servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>?,paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,components: freezed == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as Components?,jsonSchemaDialect: freezed == jsonSchemaDialect ? _self.jsonSchemaDialect : jsonSchemaDialect // ignore: cast_nullable_to_non_nullable
as String?,security: null == security ? _self._security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,webhooks: null == webhooks ? _self._webhooks : webhooks // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res> get info {
  
  return $InfoCopyWith<$Res>(_self.info, (value) {
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
