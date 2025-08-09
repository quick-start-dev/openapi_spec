// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'components.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Components {

/// The schemas available for reuse.
 Map<String, Schema>? get schemas;/// The responses available for reuse.
 Map<String, Response>? get responses;/// The parameters available for reuse.
 Map<String, Parameter>? get parameters;/// The request bodies available for reuse.
 Map<String, RequestBody>? get requestBodies;/// The security schemes available for reuse.
 Map<String, SecurityScheme>? get securitySchemes;/// The headers available for reuse.
 Map<String, Header>? get headers;/// An object to hold reusable Link Objects.
 Map<String, Link>? get links;/// The callbacks available for reuse.
 Map<String, Callback>? get callbacks;/// The path items available for reuse.
 Map<String, PathItem>? get pathItems;/// The OpenAPI extensions available for reuse.
@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions;/// An object to hold reusable Example Objects.
 Map<String, Example>? get examples;
/// Create a copy of Components
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentsCopyWith<Components> get copyWith => _$ComponentsCopyWithImpl<Components>(this as Components, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Components&&const DeepCollectionEquality().equals(other.schemas, schemas)&&const DeepCollectionEquality().equals(other.responses, responses)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&const DeepCollectionEquality().equals(other.requestBodies, requestBodies)&&const DeepCollectionEquality().equals(other.securitySchemes, securitySchemes)&&const DeepCollectionEquality().equals(other.headers, headers)&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.callbacks, callbacks)&&const DeepCollectionEquality().equals(other.pathItems, pathItems)&&const DeepCollectionEquality().equals(other.extensions, extensions)&&const DeepCollectionEquality().equals(other.examples, examples));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(schemas),const DeepCollectionEquality().hash(responses),const DeepCollectionEquality().hash(parameters),const DeepCollectionEquality().hash(requestBodies),const DeepCollectionEquality().hash(securitySchemes),const DeepCollectionEquality().hash(headers),const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(callbacks),const DeepCollectionEquality().hash(pathItems),const DeepCollectionEquality().hash(extensions),const DeepCollectionEquality().hash(examples));

@override
String toString() {
  return 'Components(schemas: $schemas, responses: $responses, parameters: $parameters, requestBodies: $requestBodies, securitySchemes: $securitySchemes, headers: $headers, links: $links, callbacks: $callbacks, pathItems: $pathItems, extensions: $extensions, examples: $examples)';
}


}

/// @nodoc
abstract mixin class $ComponentsCopyWith<$Res>  {
  factory $ComponentsCopyWith(Components value, $Res Function(Components) _then) = _$ComponentsCopyWithImpl;
@useResult
$Res call({
 Map<String, Schema>? schemas, Map<String, Response>? responses, Map<String, Parameter>? parameters, Map<String, RequestBody>? requestBodies, Map<String, SecurityScheme>? securitySchemes, Map<String, Header>? headers, Map<String, Link>? links, Map<String, Callback>? callbacks, Map<String, PathItem>? pathItems,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions, Map<String, Example>? examples
});




}
/// @nodoc
class _$ComponentsCopyWithImpl<$Res>
    implements $ComponentsCopyWith<$Res> {
  _$ComponentsCopyWithImpl(this._self, this._then);

  final Components _self;
  final $Res Function(Components) _then;

/// Create a copy of Components
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemas = freezed,Object? responses = freezed,Object? parameters = freezed,Object? requestBodies = freezed,Object? securitySchemes = freezed,Object? headers = freezed,Object? links = freezed,Object? callbacks = freezed,Object? pathItems = freezed,Object? extensions = freezed,Object? examples = freezed,}) {
  return _then(_self.copyWith(
schemas: freezed == schemas ? _self.schemas : schemas // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>?,responses: freezed == responses ? _self.responses : responses // ignore: cast_nullable_to_non_nullable
as Map<String, Response>?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, Parameter>?,requestBodies: freezed == requestBodies ? _self.requestBodies : requestBodies // ignore: cast_nullable_to_non_nullable
as Map<String, RequestBody>?,securitySchemes: freezed == securitySchemes ? _self.securitySchemes : securitySchemes // ignore: cast_nullable_to_non_nullable
as Map<String, SecurityScheme>?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Map<String, Link>?,callbacks: freezed == callbacks ? _self.callbacks : callbacks // ignore: cast_nullable_to_non_nullable
as Map<String, Callback>?,pathItems: freezed == pathItems ? _self.pathItems : pathItems // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,examples: freezed == examples ? _self.examples : examples // ignore: cast_nullable_to_non_nullable
as Map<String, Example>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Components].
extension ComponentsPatterns on Components {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Components value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Components() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Components value)  $default,){
final _that = this;
switch (_that) {
case _Components():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Components value)?  $default,){
final _that = this;
switch (_that) {
case _Components() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Schema>? schemas,  Map<String, Response>? responses,  Map<String, Parameter>? parameters,  Map<String, RequestBody>? requestBodies,  Map<String, SecurityScheme>? securitySchemes,  Map<String, Header>? headers,  Map<String, Link>? links,  Map<String, Callback>? callbacks,  Map<String, PathItem>? pathItems, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions,  Map<String, Example>? examples)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Components() when $default != null:
return $default(_that.schemas,_that.responses,_that.parameters,_that.requestBodies,_that.securitySchemes,_that.headers,_that.links,_that.callbacks,_that.pathItems,_that.extensions,_that.examples);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Schema>? schemas,  Map<String, Response>? responses,  Map<String, Parameter>? parameters,  Map<String, RequestBody>? requestBodies,  Map<String, SecurityScheme>? securitySchemes,  Map<String, Header>? headers,  Map<String, Link>? links,  Map<String, Callback>? callbacks,  Map<String, PathItem>? pathItems, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions,  Map<String, Example>? examples)  $default,) {final _that = this;
switch (_that) {
case _Components():
return $default(_that.schemas,_that.responses,_that.parameters,_that.requestBodies,_that.securitySchemes,_that.headers,_that.links,_that.callbacks,_that.pathItems,_that.extensions,_that.examples);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Schema>? schemas,  Map<String, Response>? responses,  Map<String, Parameter>? parameters,  Map<String, RequestBody>? requestBodies,  Map<String, SecurityScheme>? securitySchemes,  Map<String, Header>? headers,  Map<String, Link>? links,  Map<String, Callback>? callbacks,  Map<String, PathItem>? pathItems, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions,  Map<String, Example>? examples)?  $default,) {final _that = this;
switch (_that) {
case _Components() when $default != null:
return $default(_that.schemas,_that.responses,_that.parameters,_that.requestBodies,_that.securitySchemes,_that.headers,_that.links,_that.callbacks,_that.pathItems,_that.extensions,_that.examples);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Components extends Components {
  const _Components({final  Map<String, Schema>? schemas, final  Map<String, Response>? responses, final  Map<String, Parameter>? parameters, final  Map<String, RequestBody>? requestBodies, final  Map<String, SecurityScheme>? securitySchemes, final  Map<String, Header>? headers, final  Map<String, Link>? links, final  Map<String, Callback>? callbacks, final  Map<String, PathItem>? pathItems, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) final  Map<String, dynamic>? extensions, final  Map<String, Example>? examples}): _schemas = schemas,_responses = responses,_parameters = parameters,_requestBodies = requestBodies,_securitySchemes = securitySchemes,_headers = headers,_links = links,_callbacks = callbacks,_pathItems = pathItems,_extensions = extensions,_examples = examples,super._();
  factory _Components.fromJson(Map<String, dynamic> json) => _$ComponentsFromJson(json);

/// The schemas available for reuse.
 final  Map<String, Schema>? _schemas;
/// The schemas available for reuse.
@override Map<String, Schema>? get schemas {
  final value = _schemas;
  if (value == null) return null;
  if (_schemas is EqualUnmodifiableMapView) return _schemas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The responses available for reuse.
 final  Map<String, Response>? _responses;
/// The responses available for reuse.
@override Map<String, Response>? get responses {
  final value = _responses;
  if (value == null) return null;
  if (_responses is EqualUnmodifiableMapView) return _responses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The parameters available for reuse.
 final  Map<String, Parameter>? _parameters;
/// The parameters available for reuse.
@override Map<String, Parameter>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableMapView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The request bodies available for reuse.
 final  Map<String, RequestBody>? _requestBodies;
/// The request bodies available for reuse.
@override Map<String, RequestBody>? get requestBodies {
  final value = _requestBodies;
  if (value == null) return null;
  if (_requestBodies is EqualUnmodifiableMapView) return _requestBodies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The security schemes available for reuse.
 final  Map<String, SecurityScheme>? _securitySchemes;
/// The security schemes available for reuse.
@override Map<String, SecurityScheme>? get securitySchemes {
  final value = _securitySchemes;
  if (value == null) return null;
  if (_securitySchemes is EqualUnmodifiableMapView) return _securitySchemes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The headers available for reuse.
 final  Map<String, Header>? _headers;
/// The headers available for reuse.
@override Map<String, Header>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// An object to hold reusable Link Objects.
 final  Map<String, Link>? _links;
/// An object to hold reusable Link Objects.
@override Map<String, Link>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableMapView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The callbacks available for reuse.
 final  Map<String, Callback>? _callbacks;
/// The callbacks available for reuse.
@override Map<String, Callback>? get callbacks {
  final value = _callbacks;
  if (value == null) return null;
  if (_callbacks is EqualUnmodifiableMapView) return _callbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The path items available for reuse.
 final  Map<String, PathItem>? _pathItems;
/// The path items available for reuse.
@override Map<String, PathItem>? get pathItems {
  final value = _pathItems;
  if (value == null) return null;
  if (_pathItems is EqualUnmodifiableMapView) return _pathItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// The OpenAPI extensions available for reuse.
 final  Map<String, dynamic>? _extensions;
/// The OpenAPI extensions available for reuse.
@override@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions {
  final value = _extensions;
  if (value == null) return null;
  if (_extensions is EqualUnmodifiableMapView) return _extensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// An object to hold reusable Example Objects.
 final  Map<String, Example>? _examples;
/// An object to hold reusable Example Objects.
@override Map<String, Example>? get examples {
  final value = _examples;
  if (value == null) return null;
  if (_examples is EqualUnmodifiableMapView) return _examples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Components
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentsCopyWith<_Components> get copyWith => __$ComponentsCopyWithImpl<_Components>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Components&&const DeepCollectionEquality().equals(other._schemas, _schemas)&&const DeepCollectionEquality().equals(other._responses, _responses)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&const DeepCollectionEquality().equals(other._requestBodies, _requestBodies)&&const DeepCollectionEquality().equals(other._securitySchemes, _securitySchemes)&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._links, _links)&&const DeepCollectionEquality().equals(other._callbacks, _callbacks)&&const DeepCollectionEquality().equals(other._pathItems, _pathItems)&&const DeepCollectionEquality().equals(other._extensions, _extensions)&&const DeepCollectionEquality().equals(other._examples, _examples));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_schemas),const DeepCollectionEquality().hash(_responses),const DeepCollectionEquality().hash(_parameters),const DeepCollectionEquality().hash(_requestBodies),const DeepCollectionEquality().hash(_securitySchemes),const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_callbacks),const DeepCollectionEquality().hash(_pathItems),const DeepCollectionEquality().hash(_extensions),const DeepCollectionEquality().hash(_examples));

@override
String toString() {
  return 'Components(schemas: $schemas, responses: $responses, parameters: $parameters, requestBodies: $requestBodies, securitySchemes: $securitySchemes, headers: $headers, links: $links, callbacks: $callbacks, pathItems: $pathItems, extensions: $extensions, examples: $examples)';
}


}

/// @nodoc
abstract mixin class _$ComponentsCopyWith<$Res> implements $ComponentsCopyWith<$Res> {
  factory _$ComponentsCopyWith(_Components value, $Res Function(_Components) _then) = __$ComponentsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Schema>? schemas, Map<String, Response>? responses, Map<String, Parameter>? parameters, Map<String, RequestBody>? requestBodies, Map<String, SecurityScheme>? securitySchemes, Map<String, Header>? headers, Map<String, Link>? links, Map<String, Callback>? callbacks, Map<String, PathItem>? pathItems,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions, Map<String, Example>? examples
});




}
/// @nodoc
class __$ComponentsCopyWithImpl<$Res>
    implements _$ComponentsCopyWith<$Res> {
  __$ComponentsCopyWithImpl(this._self, this._then);

  final _Components _self;
  final $Res Function(_Components) _then;

/// Create a copy of Components
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemas = freezed,Object? responses = freezed,Object? parameters = freezed,Object? requestBodies = freezed,Object? securitySchemes = freezed,Object? headers = freezed,Object? links = freezed,Object? callbacks = freezed,Object? pathItems = freezed,Object? extensions = freezed,Object? examples = freezed,}) {
  return _then(_Components(
schemas: freezed == schemas ? _self._schemas : schemas // ignore: cast_nullable_to_non_nullable
as Map<String, Schema>?,responses: freezed == responses ? _self._responses : responses // ignore: cast_nullable_to_non_nullable
as Map<String, Response>?,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, Parameter>?,requestBodies: freezed == requestBodies ? _self._requestBodies : requestBodies // ignore: cast_nullable_to_non_nullable
as Map<String, RequestBody>?,securitySchemes: freezed == securitySchemes ? _self._securitySchemes : securitySchemes // ignore: cast_nullable_to_non_nullable
as Map<String, SecurityScheme>?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as Map<String, Link>?,callbacks: freezed == callbacks ? _self._callbacks : callbacks // ignore: cast_nullable_to_non_nullable
as Map<String, Callback>?,pathItems: freezed == pathItems ? _self._pathItems : pathItems // ignore: cast_nullable_to_non_nullable
as Map<String, PathItem>?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,examples: freezed == examples ? _self._examples : examples // ignore: cast_nullable_to_non_nullable
as Map<String, Example>?,
  ));
}


}

// dart format on
