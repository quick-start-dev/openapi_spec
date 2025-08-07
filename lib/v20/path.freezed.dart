// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PathItem {

/// The definition for the `GET` operation.
 Operation? get get;/// The definition for the `POST` operation.
 Operation? get post;/// The definition for the `PUT` operation.
 Operation? get put;/// The definition for the `DELETE` operation.
 Operation? get delete;/// The definition for the `PATCH` operation.
 Operation? get patch;/// The definition for the `OPTIONS` operation.
 Operation? get options;/// The definition for the `HEAD` operation.
 Operation? get head;/// The definition for the `TRACE` operation.
 Operation? get trace;@JsonKey(name: r'$ref') String? get ref;/// A list of parameters that are applicable for all the operations
/// described under this path.
/// These parameters can be overridden at the operation level,
/// but cannot be removed there.
/// The list MUST NOT include duplicated parameters.
/// A unique parameter is defined by a combination of a name and location.
/// The list can use the Reference Object to link to parameters
/// that are defined at the Swagger Object's parameters.
/// There can be one "body" parameter at most.
 List<Parameter>? get parameters;/// Allows extensions to the Swagger Schema.
/// The field name MUST begin with x-, for example, x-internal-id.
/// The value can be null, a primitive, an array or an object.
/// See Vendor Extensions for further details.
 Map<String, dynamic>? get extensions;
/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PathItemCopyWith<PathItem> get copyWith => _$PathItemCopyWithImpl<PathItem>(this as PathItem, _$identity);

  /// Serializes this PathItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PathItem&&(identical(other.get, get) || other.get == get)&&(identical(other.post, post) || other.post == post)&&(identical(other.put, put) || other.put == put)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.patch, patch) || other.patch == patch)&&(identical(other.options, options) || other.options == options)&&(identical(other.head, head) || other.head == head)&&(identical(other.trace, trace) || other.trace == trace)&&(identical(other.ref, ref) || other.ref == ref)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,get,post,put,delete,patch,options,head,trace,ref,const DeepCollectionEquality().hash(parameters),const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'PathItem(get: $get, post: $post, put: $put, delete: $delete, patch: $patch, options: $options, head: $head, trace: $trace, ref: $ref, parameters: $parameters, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $PathItemCopyWith<$Res>  {
  factory $PathItemCopyWith(PathItem value, $Res Function(PathItem) _then) = _$PathItemCopyWithImpl;
@useResult
$Res call({
 Operation? get, Operation? post, Operation? put, Operation? delete, Operation? patch, Operation? options, Operation? head, Operation? trace,@JsonKey(name: r'$ref') String? ref, List<Parameter>? parameters, Map<String, dynamic>? extensions
});


$OperationCopyWith<$Res>? get get;$OperationCopyWith<$Res>? get post;$OperationCopyWith<$Res>? get put;$OperationCopyWith<$Res>? get delete;$OperationCopyWith<$Res>? get patch;$OperationCopyWith<$Res>? get options;$OperationCopyWith<$Res>? get head;$OperationCopyWith<$Res>? get trace;

}
/// @nodoc
class _$PathItemCopyWithImpl<$Res>
    implements $PathItemCopyWith<$Res> {
  _$PathItemCopyWithImpl(this._self, this._then);

  final PathItem _self;
  final $Res Function(PathItem) _then;

/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? get = freezed,Object? post = freezed,Object? put = freezed,Object? delete = freezed,Object? patch = freezed,Object? options = freezed,Object? head = freezed,Object? trace = freezed,Object? ref = freezed,Object? parameters = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
get: freezed == get ? _self.get : get // ignore: cast_nullable_to_non_nullable
as Operation?,post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Operation?,put: freezed == put ? _self.put : put // ignore: cast_nullable_to_non_nullable
as Operation?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as Operation?,patch: freezed == patch ? _self.patch : patch // ignore: cast_nullable_to_non_nullable
as Operation?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as Operation?,head: freezed == head ? _self.head : head // ignore: cast_nullable_to_non_nullable
as Operation?,trace: freezed == trace ? _self.trace : trace // ignore: cast_nullable_to_non_nullable
as Operation?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get get {
    if (_self.get == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.get!, (value) {
    return _then(_self.copyWith(get: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get post {
    if (_self.post == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.post!, (value) {
    return _then(_self.copyWith(post: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get put {
    if (_self.put == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.put!, (value) {
    return _then(_self.copyWith(put: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get delete {
    if (_self.delete == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.delete!, (value) {
    return _then(_self.copyWith(delete: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get patch {
    if (_self.patch == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.patch!, (value) {
    return _then(_self.copyWith(patch: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get head {
    if (_self.head == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.head!, (value) {
    return _then(_self.copyWith(head: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get trace {
    if (_self.trace == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.trace!, (value) {
    return _then(_self.copyWith(trace: value));
  });
}
}


/// Adds pattern-matching-related methods to [PathItem].
extension PathItemPatterns on PathItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PathItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PathItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PathItem value)  $default,){
final _that = this;
switch (_that) {
case _PathItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PathItem value)?  $default,){
final _that = this;
switch (_that) {
case _PathItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Operation? get,  Operation? post,  Operation? put,  Operation? delete,  Operation? patch,  Operation? options,  Operation? head,  Operation? trace, @JsonKey(name: r'$ref')  String? ref,  List<Parameter>? parameters,  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PathItem() when $default != null:
return $default(_that.get,_that.post,_that.put,_that.delete,_that.patch,_that.options,_that.head,_that.trace,_that.ref,_that.parameters,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Operation? get,  Operation? post,  Operation? put,  Operation? delete,  Operation? patch,  Operation? options,  Operation? head,  Operation? trace, @JsonKey(name: r'$ref')  String? ref,  List<Parameter>? parameters,  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _PathItem():
return $default(_that.get,_that.post,_that.put,_that.delete,_that.patch,_that.options,_that.head,_that.trace,_that.ref,_that.parameters,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Operation? get,  Operation? post,  Operation? put,  Operation? delete,  Operation? patch,  Operation? options,  Operation? head,  Operation? trace, @JsonKey(name: r'$ref')  String? ref,  List<Parameter>? parameters,  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _PathItem() when $default != null:
return $default(_that.get,_that.post,_that.put,_that.delete,_that.patch,_that.options,_that.head,_that.trace,_that.ref,_that.parameters,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _PathItem implements PathItem {
  const _PathItem({this.get, this.post, this.put, this.delete, this.patch, this.options, this.head, this.trace, @JsonKey(name: r'$ref') this.ref, final  List<Parameter>? parameters, final  Map<String, dynamic>? extensions}): _parameters = parameters,_extensions = extensions;
  factory _PathItem.fromJson(Map<String, dynamic> json) => _$PathItemFromJson(json);

/// The definition for the `GET` operation.
@override final  Operation? get;
/// The definition for the `POST` operation.
@override final  Operation? post;
/// The definition for the `PUT` operation.
@override final  Operation? put;
/// The definition for the `DELETE` operation.
@override final  Operation? delete;
/// The definition for the `PATCH` operation.
@override final  Operation? patch;
/// The definition for the `OPTIONS` operation.
@override final  Operation? options;
/// The definition for the `HEAD` operation.
@override final  Operation? head;
/// The definition for the `TRACE` operation.
@override final  Operation? trace;
@override@JsonKey(name: r'$ref') final  String? ref;
/// A list of parameters that are applicable for all the operations
/// described under this path.
/// These parameters can be overridden at the operation level,
/// but cannot be removed there.
/// The list MUST NOT include duplicated parameters.
/// A unique parameter is defined by a combination of a name and location.
/// The list can use the Reference Object to link to parameters
/// that are defined at the Swagger Object's parameters.
/// There can be one "body" parameter at most.
 final  List<Parameter>? _parameters;
/// A list of parameters that are applicable for all the operations
/// described under this path.
/// These parameters can be overridden at the operation level,
/// but cannot be removed there.
/// The list MUST NOT include duplicated parameters.
/// A unique parameter is defined by a combination of a name and location.
/// The list can use the Reference Object to link to parameters
/// that are defined at the Swagger Object's parameters.
/// There can be one "body" parameter at most.
@override List<Parameter>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Allows extensions to the Swagger Schema.
/// The field name MUST begin with x-, for example, x-internal-id.
/// The value can be null, a primitive, an array or an object.
/// See Vendor Extensions for further details.
 final  Map<String, dynamic>? _extensions;
/// Allows extensions to the Swagger Schema.
/// The field name MUST begin with x-, for example, x-internal-id.
/// The value can be null, a primitive, an array or an object.
/// See Vendor Extensions for further details.
@override Map<String, dynamic>? get extensions {
  final value = _extensions;
  if (value == null) return null;
  if (_extensions is EqualUnmodifiableMapView) return _extensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PathItemCopyWith<_PathItem> get copyWith => __$PathItemCopyWithImpl<_PathItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PathItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PathItem&&(identical(other.get, get) || other.get == get)&&(identical(other.post, post) || other.post == post)&&(identical(other.put, put) || other.put == put)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.patch, patch) || other.patch == patch)&&(identical(other.options, options) || other.options == options)&&(identical(other.head, head) || other.head == head)&&(identical(other.trace, trace) || other.trace == trace)&&(identical(other.ref, ref) || other.ref == ref)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,get,post,put,delete,patch,options,head,trace,ref,const DeepCollectionEquality().hash(_parameters),const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'PathItem(get: $get, post: $post, put: $put, delete: $delete, patch: $patch, options: $options, head: $head, trace: $trace, ref: $ref, parameters: $parameters, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$PathItemCopyWith<$Res> implements $PathItemCopyWith<$Res> {
  factory _$PathItemCopyWith(_PathItem value, $Res Function(_PathItem) _then) = __$PathItemCopyWithImpl;
@override @useResult
$Res call({
 Operation? get, Operation? post, Operation? put, Operation? delete, Operation? patch, Operation? options, Operation? head, Operation? trace,@JsonKey(name: r'$ref') String? ref, List<Parameter>? parameters, Map<String, dynamic>? extensions
});


@override $OperationCopyWith<$Res>? get get;@override $OperationCopyWith<$Res>? get post;@override $OperationCopyWith<$Res>? get put;@override $OperationCopyWith<$Res>? get delete;@override $OperationCopyWith<$Res>? get patch;@override $OperationCopyWith<$Res>? get options;@override $OperationCopyWith<$Res>? get head;@override $OperationCopyWith<$Res>? get trace;

}
/// @nodoc
class __$PathItemCopyWithImpl<$Res>
    implements _$PathItemCopyWith<$Res> {
  __$PathItemCopyWithImpl(this._self, this._then);

  final _PathItem _self;
  final $Res Function(_PathItem) _then;

/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? get = freezed,Object? post = freezed,Object? put = freezed,Object? delete = freezed,Object? patch = freezed,Object? options = freezed,Object? head = freezed,Object? trace = freezed,Object? ref = freezed,Object? parameters = freezed,Object? extensions = freezed,}) {
  return _then(_PathItem(
get: freezed == get ? _self.get : get // ignore: cast_nullable_to_non_nullable
as Operation?,post: freezed == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as Operation?,put: freezed == put ? _self.put : put // ignore: cast_nullable_to_non_nullable
as Operation?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as Operation?,patch: freezed == patch ? _self.patch : patch // ignore: cast_nullable_to_non_nullable
as Operation?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as Operation?,head: freezed == head ? _self.head : head // ignore: cast_nullable_to_non_nullable
as Operation?,trace: freezed == trace ? _self.trace : trace // ignore: cast_nullable_to_non_nullable
as Operation?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get get {
    if (_self.get == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.get!, (value) {
    return _then(_self.copyWith(get: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get post {
    if (_self.post == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.post!, (value) {
    return _then(_self.copyWith(post: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get put {
    if (_self.put == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.put!, (value) {
    return _then(_self.copyWith(put: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get delete {
    if (_self.delete == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.delete!, (value) {
    return _then(_self.copyWith(delete: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get patch {
    if (_self.patch == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.patch!, (value) {
    return _then(_self.copyWith(patch: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get head {
    if (_self.head == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.head!, (value) {
    return _then(_self.copyWith(head: value));
  });
}/// Create a copy of PathItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperationCopyWith<$Res>? get trace {
    if (_self.trace == null) {
    return null;
  }

  return $OperationCopyWith<$Res>(_self.trace!, (value) {
    return _then(_self.copyWith(trace: value));
  });
}
}

// dart format on
