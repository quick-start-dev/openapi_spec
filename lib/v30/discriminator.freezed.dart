// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discriminator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Discriminator {

/// The name of the property that is used to differentiate between schemas.
 String get propertyName;/// A map that associates a property value with a schema name.
 Map<String, String>? get mapping;
/// Create a copy of Discriminator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscriminatorCopyWith<Discriminator> get copyWith => _$DiscriminatorCopyWithImpl<Discriminator>(this as Discriminator, _$identity);

  /// Serializes this Discriminator to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Discriminator&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&const DeepCollectionEquality().equals(other.mapping, mapping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,propertyName,const DeepCollectionEquality().hash(mapping));

@override
String toString() {
  return 'Discriminator(propertyName: $propertyName, mapping: $mapping)';
}


}

/// @nodoc
abstract mixin class $DiscriminatorCopyWith<$Res>  {
  factory $DiscriminatorCopyWith(Discriminator value, $Res Function(Discriminator) _then) = _$DiscriminatorCopyWithImpl;
@useResult
$Res call({
 String propertyName, Map<String, String>? mapping
});




}
/// @nodoc
class _$DiscriminatorCopyWithImpl<$Res>
    implements $DiscriminatorCopyWith<$Res> {
  _$DiscriminatorCopyWithImpl(this._self, this._then);

  final Discriminator _self;
  final $Res Function(Discriminator) _then;

/// Create a copy of Discriminator
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? propertyName = null,Object? mapping = freezed,}) {
  return _then(_self.copyWith(
propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,mapping: freezed == mapping ? _self.mapping : mapping // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Discriminator].
extension DiscriminatorPatterns on Discriminator {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Discriminator value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Discriminator() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Discriminator value)  $default,){
final _that = this;
switch (_that) {
case _Discriminator():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Discriminator value)?  $default,){
final _that = this;
switch (_that) {
case _Discriminator() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String propertyName,  Map<String, String>? mapping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Discriminator() when $default != null:
return $default(_that.propertyName,_that.mapping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String propertyName,  Map<String, String>? mapping)  $default,) {final _that = this;
switch (_that) {
case _Discriminator():
return $default(_that.propertyName,_that.mapping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String propertyName,  Map<String, String>? mapping)?  $default,) {final _that = this;
switch (_that) {
case _Discriminator() when $default != null:
return $default(_that.propertyName,_that.mapping);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Discriminator implements Discriminator {
  const _Discriminator({required this.propertyName, final  Map<String, String>? mapping}): _mapping = mapping;
  factory _Discriminator.fromJson(Map<String, dynamic> json) => _$DiscriminatorFromJson(json);

/// The name of the property that is used to differentiate between schemas.
@override final  String propertyName;
/// A map that associates a property value with a schema name.
 final  Map<String, String>? _mapping;
/// A map that associates a property value with a schema name.
@override Map<String, String>? get mapping {
  final value = _mapping;
  if (value == null) return null;
  if (_mapping is EqualUnmodifiableMapView) return _mapping;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Discriminator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscriminatorCopyWith<_Discriminator> get copyWith => __$DiscriminatorCopyWithImpl<_Discriminator>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscriminatorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Discriminator&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&const DeepCollectionEquality().equals(other._mapping, _mapping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,propertyName,const DeepCollectionEquality().hash(_mapping));

@override
String toString() {
  return 'Discriminator(propertyName: $propertyName, mapping: $mapping)';
}


}

/// @nodoc
abstract mixin class _$DiscriminatorCopyWith<$Res> implements $DiscriminatorCopyWith<$Res> {
  factory _$DiscriminatorCopyWith(_Discriminator value, $Res Function(_Discriminator) _then) = __$DiscriminatorCopyWithImpl;
@override @useResult
$Res call({
 String propertyName, Map<String, String>? mapping
});




}
/// @nodoc
class __$DiscriminatorCopyWithImpl<$Res>
    implements _$DiscriminatorCopyWith<$Res> {
  __$DiscriminatorCopyWithImpl(this._self, this._then);

  final _Discriminator _self;
  final $Res Function(_Discriminator) _then;

/// Create a copy of Discriminator
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? propertyName = null,Object? mapping = freezed,}) {
  return _then(_Discriminator(
propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,mapping: freezed == mapping ? _self._mapping : mapping // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
