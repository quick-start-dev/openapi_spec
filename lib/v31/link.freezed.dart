// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Link {

/// A URI reference to an OAS operation. This field is mutually exclusive
/// with the [operationId] field.
 String? get operationRef;/// The name of an existing, resolvable OAS operation, as defined with
/// a unique operationId. This field is mutually exclusive with the
/// [operationRef] field.
 String? get operationId;/// A map representing parameters to pass to an operation. The key is the
/// parameter name, and the value is a constant or an expression.
 Map<String, dynamic>? get parameters;/// A literal value or an expression to use as a request body when
/// calling the target operation.
 dynamic get requestBody;/// A description of the link.
 String? get description;/// A server object to be used by the target operation.
 Server? get server;
/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkCopyWith<Link> get copyWith => _$LinkCopyWithImpl<Link>(this as Link, _$identity);

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Link&&(identical(other.operationRef, operationRef) || other.operationRef == operationRef)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&const DeepCollectionEquality().equals(other.requestBody, requestBody)&&(identical(other.description, description) || other.description == description)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,operationRef,operationId,const DeepCollectionEquality().hash(parameters),const DeepCollectionEquality().hash(requestBody),description,server);

@override
String toString() {
  return 'Link(operationRef: $operationRef, operationId: $operationId, parameters: $parameters, requestBody: $requestBody, description: $description, server: $server)';
}


}

/// @nodoc
abstract mixin class $LinkCopyWith<$Res>  {
  factory $LinkCopyWith(Link value, $Res Function(Link) _then) = _$LinkCopyWithImpl;
@useResult
$Res call({
 String? operationRef, String? operationId, Map<String, dynamic>? parameters, dynamic requestBody, String? description, Server? server
});


$ServerCopyWith<$Res>? get server;

}
/// @nodoc
class _$LinkCopyWithImpl<$Res>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._self, this._then);

  final Link _self;
  final $Res Function(Link) _then;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? operationRef = freezed,Object? operationId = freezed,Object? parameters = freezed,Object? requestBody = freezed,Object? description = freezed,Object? server = freezed,}) {
  return _then(_self.copyWith(
operationRef: freezed == operationRef ? _self.operationRef : operationRef // ignore: cast_nullable_to_non_nullable
as String?,operationId: freezed == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as dynamic,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as Server?,
  ));
}
/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerCopyWith<$Res>? get server {
    if (_self.server == null) {
    return null;
  }

  return $ServerCopyWith<$Res>(_self.server!, (value) {
    return _then(_self.copyWith(server: value));
  });
}
}


/// Adds pattern-matching-related methods to [Link].
extension LinkPatterns on Link {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Link value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Link() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Link value)  $default,){
final _that = this;
switch (_that) {
case _Link():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Link value)?  $default,){
final _that = this;
switch (_that) {
case _Link() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? operationRef,  String? operationId,  Map<String, dynamic>? parameters,  dynamic requestBody,  String? description,  Server? server)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Link() when $default != null:
return $default(_that.operationRef,_that.operationId,_that.parameters,_that.requestBody,_that.description,_that.server);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? operationRef,  String? operationId,  Map<String, dynamic>? parameters,  dynamic requestBody,  String? description,  Server? server)  $default,) {final _that = this;
switch (_that) {
case _Link():
return $default(_that.operationRef,_that.operationId,_that.parameters,_that.requestBody,_that.description,_that.server);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? operationRef,  String? operationId,  Map<String, dynamic>? parameters,  dynamic requestBody,  String? description,  Server? server)?  $default,) {final _that = this;
switch (_that) {
case _Link() when $default != null:
return $default(_that.operationRef,_that.operationId,_that.parameters,_that.requestBody,_that.description,_that.server);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _Link implements Link {
  const _Link({this.operationRef, this.operationId, final  Map<String, dynamic>? parameters, this.requestBody, this.description, this.server}): _parameters = parameters;
  factory _Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

/// A URI reference to an OAS operation. This field is mutually exclusive
/// with the [operationId] field.
@override final  String? operationRef;
/// The name of an existing, resolvable OAS operation, as defined with
/// a unique operationId. This field is mutually exclusive with the
/// [operationRef] field.
@override final  String? operationId;
/// A map representing parameters to pass to an operation. The key is the
/// parameter name, and the value is a constant or an expression.
 final  Map<String, dynamic>? _parameters;
/// A map representing parameters to pass to an operation. The key is the
/// parameter name, and the value is a constant or an expression.
@override Map<String, dynamic>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableMapView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// A literal value or an expression to use as a request body when
/// calling the target operation.
@override final  dynamic requestBody;
/// A description of the link.
@override final  String? description;
/// A server object to be used by the target operation.
@override final  Server? server;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkCopyWith<_Link> get copyWith => __$LinkCopyWithImpl<_Link>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Link&&(identical(other.operationRef, operationRef) || other.operationRef == operationRef)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&const DeepCollectionEquality().equals(other.requestBody, requestBody)&&(identical(other.description, description) || other.description == description)&&(identical(other.server, server) || other.server == server));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,operationRef,operationId,const DeepCollectionEquality().hash(_parameters),const DeepCollectionEquality().hash(requestBody),description,server);

@override
String toString() {
  return 'Link(operationRef: $operationRef, operationId: $operationId, parameters: $parameters, requestBody: $requestBody, description: $description, server: $server)';
}


}

/// @nodoc
abstract mixin class _$LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$LinkCopyWith(_Link value, $Res Function(_Link) _then) = __$LinkCopyWithImpl;
@override @useResult
$Res call({
 String? operationRef, String? operationId, Map<String, dynamic>? parameters, dynamic requestBody, String? description, Server? server
});


@override $ServerCopyWith<$Res>? get server;

}
/// @nodoc
class __$LinkCopyWithImpl<$Res>
    implements _$LinkCopyWith<$Res> {
  __$LinkCopyWithImpl(this._self, this._then);

  final _Link _self;
  final $Res Function(_Link) _then;

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? operationRef = freezed,Object? operationId = freezed,Object? parameters = freezed,Object? requestBody = freezed,Object? description = freezed,Object? server = freezed,}) {
  return _then(_Link(
operationRef: freezed == operationRef ? _self.operationRef : operationRef // ignore: cast_nullable_to_non_nullable
as String?,operationId: freezed == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as dynamic,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as Server?,
  ));
}

/// Create a copy of Link
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServerCopyWith<$Res>? get server {
    if (_self.server == null) {
    return null;
  }

  return $ServerCopyWith<$Res>(_self.server!, (value) {
    return _then(_self.copyWith(server: value));
  });
}
}

// dart format on
