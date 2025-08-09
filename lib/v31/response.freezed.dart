// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Response {

/// A brief description of the response.
 String get description;/// The content of the response for OpenAPI 3.0.
 Map<String, MediaType>? get content;/// A map of headers for this response.
 Map<String, Header>? get headers;/// A map of operations links that can be followed from the response.
/// The key of the map is a short name for the link,
/// following the naming constraints of the names for Component Objects.
 Map<String, Link>? get links;/// A map of OpenAPI extensions.
@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? get extensions;
/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseCopyWith<Response> get copyWith => _$ResponseCopyWithImpl<Response>(this as Response, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Response&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.content, content)&&const DeepCollectionEquality().equals(other.headers, headers)&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(content),const DeepCollectionEquality().hash(headers),const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'Response(description: $description, content: $content, headers: $headers, links: $links, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $ResponseCopyWith<$Res>  {
  factory $ResponseCopyWith(Response value, $Res Function(Response) _then) = _$ResponseCopyWithImpl;
@useResult
$Res call({
 String description, Map<String, MediaType>? content, Map<String, Header>? headers, Map<String, Link>? links,@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? extensions
});




}
/// @nodoc
class _$ResponseCopyWithImpl<$Res>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._self, this._then);

  final Response _self;
  final $Res Function(Response) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? content = freezed,Object? headers = freezed,Object? links = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as Map<String, MediaType>?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Map<String, Link>?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Response].
extension ResponsePatterns on Response {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Response value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Response() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Response value)  $default,){
final _that = this;
switch (_that) {
case _Response():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Response value)?  $default,){
final _that = this;
switch (_that) {
case _Response() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  Map<String, MediaType>? content,  Map<String, Header>? headers,  Map<String, Link>? links, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Response() when $default != null:
return $default(_that.description,_that.content,_that.headers,_that.links,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  Map<String, MediaType>? content,  Map<String, Header>? headers,  Map<String, Link>? links, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _Response():
return $default(_that.description,_that.content,_that.headers,_that.links,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  Map<String, MediaType>? content,  Map<String, Header>? headers,  Map<String, Link>? links, @JsonKey(includeToJson: false, includeFromJson: false)  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _Response() when $default != null:
return $default(_that.description,_that.content,_that.headers,_that.links,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Response extends Response {
  const _Response({required this.description, final  Map<String, MediaType>? content, final  Map<String, Header>? headers, final  Map<String, Link>? links, @JsonKey(includeToJson: false, includeFromJson: false) final  Map<String, dynamic>? extensions}): _content = content,_headers = headers,_links = links,_extensions = extensions,super._();
  factory _Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);

/// A brief description of the response.
@override final  String description;
/// The content of the response for OpenAPI 3.0.
 final  Map<String, MediaType>? _content;
/// The content of the response for OpenAPI 3.0.
@override Map<String, MediaType>? get content {
  final value = _content;
  if (value == null) return null;
  if (_content is EqualUnmodifiableMapView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A map of headers for this response.
 final  Map<String, Header>? _headers;
/// A map of headers for this response.
@override Map<String, Header>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A map of operations links that can be followed from the response.
/// The key of the map is a short name for the link,
/// following the naming constraints of the names for Component Objects.
 final  Map<String, Link>? _links;
/// A map of operations links that can be followed from the response.
/// The key of the map is a short name for the link,
/// following the naming constraints of the names for Component Objects.
@override Map<String, Link>? get links {
  final value = _links;
  if (value == null) return null;
  if (_links is EqualUnmodifiableMapView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

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


/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseCopyWith<_Response> get copyWith => __$ResponseCopyWithImpl<_Response>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Response&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._content, _content)&&const DeepCollectionEquality().equals(other._headers, _headers)&&const DeepCollectionEquality().equals(other._links, _links)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_content),const DeepCollectionEquality().hash(_headers),const DeepCollectionEquality().hash(_links),const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'Response(description: $description, content: $content, headers: $headers, links: $links, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) _then) = __$ResponseCopyWithImpl;
@override @useResult
$Res call({
 String description, Map<String, MediaType>? content, Map<String, Header>? headers, Map<String, Link>? links,@JsonKey(includeToJson: false, includeFromJson: false) Map<String, dynamic>? extensions
});




}
/// @nodoc
class __$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(this._self, this._then);

  final _Response _self;
  final $Res Function(_Response) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? content = freezed,Object? headers = freezed,Object? links = freezed,Object? extensions = freezed,}) {
  return _then(_Response(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as Map<String, MediaType>?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, Header>?,links: freezed == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as Map<String, Link>?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
