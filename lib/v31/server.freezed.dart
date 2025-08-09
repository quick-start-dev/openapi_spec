// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Server {

/// A URL to the target host.
 String get url;/// A brief description of the server.
 String? get description;/// A map of server variables for URL templating.
 Map<String, ServerVariable>? get variables;
/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCopyWith<Server> get copyWith => _$ServerCopyWithImpl<Server>(this as Server, _$identity);

  /// Serializes this Server to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Server&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.variables, variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,description,const DeepCollectionEquality().hash(variables));

@override
String toString() {
  return 'Server(url: $url, description: $description, variables: $variables)';
}


}

/// @nodoc
abstract mixin class $ServerCopyWith<$Res>  {
  factory $ServerCopyWith(Server value, $Res Function(Server) _then) = _$ServerCopyWithImpl;
@useResult
$Res call({
 String url, String? description, Map<String, ServerVariable>? variables
});




}
/// @nodoc
class _$ServerCopyWithImpl<$Res>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._self, this._then);

  final Server _self;
  final $Res Function(Server) _then;

/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? description = freezed,Object? variables = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,variables: freezed == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as Map<String, ServerVariable>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Server].
extension ServerPatterns on Server {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Server value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Server() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Server value)  $default,){
final _that = this;
switch (_that) {
case _Server():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Server value)?  $default,){
final _that = this;
switch (_that) {
case _Server() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? description,  Map<String, ServerVariable>? variables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Server() when $default != null:
return $default(_that.url,_that.description,_that.variables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? description,  Map<String, ServerVariable>? variables)  $default,) {final _that = this;
switch (_that) {
case _Server():
return $default(_that.url,_that.description,_that.variables);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? description,  Map<String, ServerVariable>? variables)?  $default,) {final _that = this;
switch (_that) {
case _Server() when $default != null:
return $default(_that.url,_that.description,_that.variables);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Server implements Server {
  const _Server({required this.url, this.description, final  Map<String, ServerVariable>? variables}): _variables = variables;
  factory _Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

/// A URL to the target host.
@override final  String url;
/// A brief description of the server.
@override final  String? description;
/// A map of server variables for URL templating.
 final  Map<String, ServerVariable>? _variables;
/// A map of server variables for URL templating.
@override Map<String, ServerVariable>? get variables {
  final value = _variables;
  if (value == null) return null;
  if (_variables is EqualUnmodifiableMapView) return _variables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerCopyWith<_Server> get copyWith => __$ServerCopyWithImpl<_Server>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Server&&(identical(other.url, url) || other.url == url)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._variables, _variables));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,description,const DeepCollectionEquality().hash(_variables));

@override
String toString() {
  return 'Server(url: $url, description: $description, variables: $variables)';
}


}

/// @nodoc
abstract mixin class _$ServerCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) _then) = __$ServerCopyWithImpl;
@override @useResult
$Res call({
 String url, String? description, Map<String, ServerVariable>? variables
});




}
/// @nodoc
class __$ServerCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(this._self, this._then);

  final _Server _self;
  final $Res Function(_Server) _then;

/// Create a copy of Server
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? description = freezed,Object? variables = freezed,}) {
  return _then(_Server(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,variables: freezed == variables ? _self._variables : variables // ignore: cast_nullable_to_non_nullable
as Map<String, ServerVariable>?,
  ));
}


}


/// @nodoc
mixin _$ServerVariable {

/// REQUIRED. The default value to use for substitution, which SHALL be sent
/// if an alternate value is not supplied.
@JsonKey(name: 'default') String get defaultValue;/// An enumeration of string values to be used if the substitution
/// options are from a limited set. The array MUST NOT be empty.
@JsonKey(name: 'enum') List<String>? get enumValues;/// An optional description for the server variable.
 String? get description;
/// Create a copy of ServerVariable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerVariableCopyWith<ServerVariable> get copyWith => _$ServerVariableCopyWithImpl<ServerVariable>(this as ServerVariable, _$identity);

  /// Serializes this ServerVariable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerVariable&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&const DeepCollectionEquality().equals(other.enumValues, enumValues)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultValue,const DeepCollectionEquality().hash(enumValues),description);

@override
String toString() {
  return 'ServerVariable(defaultValue: $defaultValue, enumValues: $enumValues, description: $description)';
}


}

/// @nodoc
abstract mixin class $ServerVariableCopyWith<$Res>  {
  factory $ServerVariableCopyWith(ServerVariable value, $Res Function(ServerVariable) _then) = _$ServerVariableCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'default') String defaultValue,@JsonKey(name: 'enum') List<String>? enumValues, String? description
});




}
/// @nodoc
class _$ServerVariableCopyWithImpl<$Res>
    implements $ServerVariableCopyWith<$Res> {
  _$ServerVariableCopyWithImpl(this._self, this._then);

  final ServerVariable _self;
  final $Res Function(ServerVariable) _then;

/// Create a copy of ServerVariable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultValue = null,Object? enumValues = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String,enumValues: freezed == enumValues ? _self.enumValues : enumValues // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServerVariable].
extension ServerVariablePatterns on ServerVariable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServerVariable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerVariable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServerVariable value)  $default,){
final _that = this;
switch (_that) {
case _ServerVariable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServerVariable value)?  $default,){
final _that = this;
switch (_that) {
case _ServerVariable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'default')  String defaultValue, @JsonKey(name: 'enum')  List<String>? enumValues,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerVariable() when $default != null:
return $default(_that.defaultValue,_that.enumValues,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'default')  String defaultValue, @JsonKey(name: 'enum')  List<String>? enumValues,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ServerVariable():
return $default(_that.defaultValue,_that.enumValues,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'default')  String defaultValue, @JsonKey(name: 'enum')  List<String>? enumValues,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ServerVariable() when $default != null:
return $default(_that.defaultValue,_that.enumValues,_that.description);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ServerVariable extends ServerVariable {
  const _ServerVariable({@JsonKey(name: 'default') required this.defaultValue, @JsonKey(name: 'enum') final  List<String>? enumValues, this.description}): _enumValues = enumValues,super._();
  factory _ServerVariable.fromJson(Map<String, dynamic> json) => _$ServerVariableFromJson(json);

/// REQUIRED. The default value to use for substitution, which SHALL be sent
/// if an alternate value is not supplied.
@override@JsonKey(name: 'default') final  String defaultValue;
/// An enumeration of string values to be used if the substitution
/// options are from a limited set. The array MUST NOT be empty.
 final  List<String>? _enumValues;
/// An enumeration of string values to be used if the substitution
/// options are from a limited set. The array MUST NOT be empty.
@override@JsonKey(name: 'enum') List<String>? get enumValues {
  final value = _enumValues;
  if (value == null) return null;
  if (_enumValues is EqualUnmodifiableListView) return _enumValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// An optional description for the server variable.
@override final  String? description;

/// Create a copy of ServerVariable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerVariableCopyWith<_ServerVariable> get copyWith => __$ServerVariableCopyWithImpl<_ServerVariable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerVariableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerVariable&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&const DeepCollectionEquality().equals(other._enumValues, _enumValues)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultValue,const DeepCollectionEquality().hash(_enumValues),description);

@override
String toString() {
  return 'ServerVariable(defaultValue: $defaultValue, enumValues: $enumValues, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ServerVariableCopyWith<$Res> implements $ServerVariableCopyWith<$Res> {
  factory _$ServerVariableCopyWith(_ServerVariable value, $Res Function(_ServerVariable) _then) = __$ServerVariableCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'default') String defaultValue,@JsonKey(name: 'enum') List<String>? enumValues, String? description
});




}
/// @nodoc
class __$ServerVariableCopyWithImpl<$Res>
    implements _$ServerVariableCopyWith<$Res> {
  __$ServerVariableCopyWithImpl(this._self, this._then);

  final _ServerVariable _self;
  final $Res Function(_ServerVariable) _then;

/// Create a copy of ServerVariable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultValue = null,Object? enumValues = freezed,Object? description = freezed,}) {
  return _then(_ServerVariable(
defaultValue: null == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String,enumValues: freezed == enumValues ? _self._enumValues : enumValues // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
