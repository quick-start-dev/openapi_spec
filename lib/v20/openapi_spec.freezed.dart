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

/// The version of the Swagger specification.
 String get swagger;/// Metadata about the API.
 Info? get info;/// The host serving the API.
 String? get host;/// The base path for all API paths.
 String? get basePath;/// The transfer protocols to be used.
 List<String>? get schemes;/// A list of MIME types the API can consume.
 List<String>? get consumes;/// A list of MIME types the API can produce.
 List<String>? get produces;/// The available paths and their operations.
 Map<String, PathItem> get paths;/// An object to hold reusable schema definitions.
 Map<String, Schema> get definitions;/// A declaration of security schemes used in the API.
 Map<String, SecurityScheme> get securityDefinitions;/// A declaration of which security schemes are required for the entire API.
 List<SecurityRequirement> get security;/// External documentation for the API.
 ExternalDocs? get externalDocs;/// A list of tags for API documentation.
 List<Tag> get tags;/// Vendor extensions (keys like `x-*`).
@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions;
/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAPICopyWith<OpenAPI> get copyWith => _$OpenAPICopyWithImpl<OpenAPI>(this as OpenAPI, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAPI&&(identical(other.swagger, swagger) || other.swagger == swagger)&&(identical(other.info, info) || other.info == info)&&(identical(other.host, host) || other.host == host)&&(identical(other.basePath, basePath) || other.basePath == basePath)&&const DeepCollectionEquality().equals(other.schemes, schemes)&&const DeepCollectionEquality().equals(other.consumes, consumes)&&const DeepCollectionEquality().equals(other.produces, produces)&&const DeepCollectionEquality().equals(other.paths, paths)&&const DeepCollectionEquality().equals(other.definitions, definitions)&&const DeepCollectionEquality().equals(other.securityDefinitions, securityDefinitions)&&const DeepCollectionEquality().equals(other.security, security)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,swagger,info,host,basePath,const DeepCollectionEquality().hash(schemes),const DeepCollectionEquality().hash(consumes),const DeepCollectionEquality().hash(produces),const DeepCollectionEquality().hash(paths),const DeepCollectionEquality().hash(definitions),const DeepCollectionEquality().hash(securityDefinitions),const DeepCollectionEquality().hash(security),externalDocs,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'OpenAPI(swagger: $swagger, info: $info, host: $host, basePath: $basePath, schemes: $schemes, consumes: $consumes, produces: $produces, paths: $paths, definitions: $definitions, securityDefinitions: $securityDefinitions, security: $security, externalDocs: $externalDocs, tags: $tags, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $OpenAPICopyWith<$Res>  {
  factory $OpenAPICopyWith(OpenAPI value, $Res Function(OpenAPI) _then) = _$OpenAPICopyWithImpl;
@useResult
$Res call({
 String swagger, Info? info, String? host, String? basePath, List<String>? schemes, List<String>? consumes, List<String>? produces, Map<String, PathItem> paths, Map<String, Schema> definitions, Map<String, SecurityScheme> securityDefinitions, List<SecurityRequirement> security, ExternalDocs? externalDocs, List<Tag> tags,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


$InfoCopyWith<$Res>? get info;$ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class _$OpenAPICopyWithImpl<$Res>
    implements $OpenAPICopyWith<$Res> {
  _$OpenAPICopyWithImpl(this._self, this._then);

  final OpenAPI _self;
  final $Res Function(OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? swagger = null,Object? info = freezed,Object? host = freezed,Object? basePath = freezed,Object? schemes = freezed,Object? consumes = freezed,Object? produces = freezed,Object? paths = null,Object? definitions = null,Object? securityDefinitions = null,Object? security = null,Object? externalDocs = freezed,Object? tags = null,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
swagger: null == swagger ? _self.swagger : swagger // ignore: cast_nullable_to_non_nullable
as String,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,basePath: freezed == basePath ? _self.basePath : basePath // ignore: cast_nullable_to_non_nullable
as String?,schemes: freezed == schemes ? _self.schemes : schemes // ignore: cast_nullable_to_non_nullable
as List<String>?,consumes: freezed == consumes ? _self.consumes : consumes // ignore: cast_nullable_to_non_nullable
as List<String>?,produces: freezed == produces ? _self.produces : produces // ignore: cast_nullable_to_non_nullable
as List<String>?,paths: null == paths ? _self.paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,definitions: null == definitions ? _self.definitions : definitions // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>,securityDefinitions: null == securityDefinitions ? _self.securityDefinitions : securityDefinitions // ignore: cast_nullable_to_non_nullable
as Map<String, SecurityScheme>,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String swagger,  Info? info,  String? host,  String? basePath,  List<String>? schemes,  List<String>? consumes,  List<String>? produces,  Map<String, PathItem> paths,  Map<String, Schema> definitions,  Map<String, SecurityScheme> securityDefinitions,  List<SecurityRequirement> security,  ExternalDocs? externalDocs,  List<Tag> tags, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.swagger,_that.info,_that.host,_that.basePath,_that.schemes,_that.consumes,_that.produces,_that.paths,_that.definitions,_that.securityDefinitions,_that.security,_that.externalDocs,_that.tags,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String swagger,  Info? info,  String? host,  String? basePath,  List<String>? schemes,  List<String>? consumes,  List<String>? produces,  Map<String, PathItem> paths,  Map<String, Schema> definitions,  Map<String, SecurityScheme> securityDefinitions,  List<SecurityRequirement> security,  ExternalDocs? externalDocs,  List<Tag> tags, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _OpenAPI():
return $default(_that.swagger,_that.info,_that.host,_that.basePath,_that.schemes,_that.consumes,_that.produces,_that.paths,_that.definitions,_that.securityDefinitions,_that.security,_that.externalDocs,_that.tags,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String swagger,  Info? info,  String? host,  String? basePath,  List<String>? schemes,  List<String>? consumes,  List<String>? produces,  Map<String, PathItem> paths,  Map<String, Schema> definitions,  Map<String, SecurityScheme> securityDefinitions,  List<SecurityRequirement> security,  ExternalDocs? externalDocs,  List<Tag> tags, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _OpenAPI() when $default != null:
return $default(_that.swagger,_that.info,_that.host,_that.basePath,_that.schemes,_that.consumes,_that.produces,_that.paths,_that.definitions,_that.securityDefinitions,_that.security,_that.externalDocs,_that.tags,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _OpenAPI extends OpenAPI {
  const _OpenAPI({this.swagger = '2.0', this.info, this.host, this.basePath, final  List<String>? schemes, final  List<String>? consumes, final  List<String>? produces, final  Map<String, PathItem> paths = const {}, final  Map<String, Schema> definitions = const {}, final  Map<String, SecurityScheme> securityDefinitions = const {}, final  List<SecurityRequirement> security = const [], this.externalDocs, final  List<Tag> tags = const [], @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) final  Map<String, dynamic>? extensions}): _schemes = schemes,_consumes = consumes,_produces = produces,_paths = paths,_definitions = definitions,_securityDefinitions = securityDefinitions,_security = security,_tags = tags,_extensions = extensions,super._();
  factory _OpenAPI.fromJson(Map<String, dynamic> json) => _$OpenAPIFromJson(json);

/// The version of the Swagger specification.
@override@JsonKey() final  String swagger;
/// Metadata about the API.
@override final  Info? info;
/// The host serving the API.
@override final  String? host;
/// The base path for all API paths.
@override final  String? basePath;
/// The transfer protocols to be used.
 final  List<String>? _schemes;
/// The transfer protocols to be used.
@override List<String>? get schemes {
  final value = _schemes;
  if (value == null) return null;
  if (_schemes is EqualUnmodifiableListView) return _schemes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// A list of MIME types the API can consume.
 final  List<String>? _consumes;
/// A list of MIME types the API can consume.
@override List<String>? get consumes {
  final value = _consumes;
  if (value == null) return null;
  if (_consumes is EqualUnmodifiableListView) return _consumes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// A list of MIME types the API can produce.
 final  List<String>? _produces;
/// A list of MIME types the API can produce.
@override List<String>? get produces {
  final value = _produces;
  if (value == null) return null;
  if (_produces is EqualUnmodifiableListView) return _produces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// The available paths and their operations.
 final  Map<String, PathItem> _paths;
/// The available paths and their operations.
@override@JsonKey() Map<String, PathItem> get paths {
  if (_paths is EqualUnmodifiableMapView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paths);
}

/// An object to hold reusable schema definitions.
 final  Map<String, Schema> _definitions;
/// An object to hold reusable schema definitions.
@override@JsonKey() Map<String, Schema> get definitions {
  if (_definitions is EqualUnmodifiableMapView) return _definitions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_definitions);
}

/// A declaration of security schemes used in the API.
 final  Map<String, SecurityScheme> _securityDefinitions;
/// A declaration of security schemes used in the API.
@override@JsonKey() Map<String, SecurityScheme> get securityDefinitions {
  if (_securityDefinitions is EqualUnmodifiableMapView) return _securityDefinitions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_securityDefinitions);
}

/// A declaration of which security schemes are required for the entire API.
 final  List<SecurityRequirement> _security;
/// A declaration of which security schemes are required for the entire API.
@override@JsonKey() List<SecurityRequirement> get security {
  if (_security is EqualUnmodifiableListView) return _security;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_security);
}

/// External documentation for the API.
@override final  ExternalDocs? externalDocs;
/// A list of tags for API documentation.
 final  List<Tag> _tags;
/// A list of tags for API documentation.
@override@JsonKey() List<Tag> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// Vendor extensions (keys like `x-*`).
 final  Map<String, dynamic>? _extensions;
/// Vendor extensions (keys like `x-*`).
@override@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions {
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAPI&&(identical(other.swagger, swagger) || other.swagger == swagger)&&(identical(other.info, info) || other.info == info)&&(identical(other.host, host) || other.host == host)&&(identical(other.basePath, basePath) || other.basePath == basePath)&&const DeepCollectionEquality().equals(other._schemes, _schemes)&&const DeepCollectionEquality().equals(other._consumes, _consumes)&&const DeepCollectionEquality().equals(other._produces, _produces)&&const DeepCollectionEquality().equals(other._paths, _paths)&&const DeepCollectionEquality().equals(other._definitions, _definitions)&&const DeepCollectionEquality().equals(other._securityDefinitions, _securityDefinitions)&&const DeepCollectionEquality().equals(other._security, _security)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,swagger,info,host,basePath,const DeepCollectionEquality().hash(_schemes),const DeepCollectionEquality().hash(_consumes),const DeepCollectionEquality().hash(_produces),const DeepCollectionEquality().hash(_paths),const DeepCollectionEquality().hash(_definitions),const DeepCollectionEquality().hash(_securityDefinitions),const DeepCollectionEquality().hash(_security),externalDocs,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'OpenAPI(swagger: $swagger, info: $info, host: $host, basePath: $basePath, schemes: $schemes, consumes: $consumes, produces: $produces, paths: $paths, definitions: $definitions, securityDefinitions: $securityDefinitions, security: $security, externalDocs: $externalDocs, tags: $tags, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$OpenAPICopyWith<$Res> implements $OpenAPICopyWith<$Res> {
  factory _$OpenAPICopyWith(_OpenAPI value, $Res Function(_OpenAPI) _then) = __$OpenAPICopyWithImpl;
@override @useResult
$Res call({
 String swagger, Info? info, String? host, String? basePath, List<String>? schemes, List<String>? consumes, List<String>? produces, Map<String, PathItem> paths, Map<String, Schema> definitions, Map<String, SecurityScheme> securityDefinitions, List<SecurityRequirement> security, ExternalDocs? externalDocs, List<Tag> tags,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


@override $InfoCopyWith<$Res>? get info;@override $ExternalDocsCopyWith<$Res>? get externalDocs;

}
/// @nodoc
class __$OpenAPICopyWithImpl<$Res>
    implements _$OpenAPICopyWith<$Res> {
  __$OpenAPICopyWithImpl(this._self, this._then);

  final _OpenAPI _self;
  final $Res Function(_OpenAPI) _then;

/// Create a copy of OpenAPI
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? swagger = null,Object? info = freezed,Object? host = freezed,Object? basePath = freezed,Object? schemes = freezed,Object? consumes = freezed,Object? produces = freezed,Object? paths = null,Object? definitions = null,Object? securityDefinitions = null,Object? security = null,Object? externalDocs = freezed,Object? tags = null,Object? extensions = freezed,}) {
  return _then(_OpenAPI(
swagger: null == swagger ? _self.swagger : swagger // ignore: cast_nullable_to_non_nullable
as String,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,basePath: freezed == basePath ? _self.basePath : basePath // ignore: cast_nullable_to_non_nullable
as String?,schemes: freezed == schemes ? _self._schemes : schemes // ignore: cast_nullable_to_non_nullable
as List<String>?,consumes: freezed == consumes ? _self._consumes : consumes // ignore: cast_nullable_to_non_nullable
as List<String>?,produces: freezed == produces ? _self._produces : produces // ignore: cast_nullable_to_non_nullable
as List<String>?,paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>,definitions: null == definitions ? _self._definitions : definitions // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>,securityDefinitions: null == securityDefinitions ? _self._securityDefinitions : securityDefinitions // ignore: cast_nullable_to_non_nullable
as Map<String, SecurityScheme>,security: null == security ? _self._security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
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
