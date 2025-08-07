// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Example {

/// A short description for the example.
 String? get summary;/// A long description for the example.
 String? get description;/// Embedded literal example. The `value` field and `externalValue` field
/// are mutually exclusive.
 dynamic get value;/// A URL that points to the literal example. The `value` field and
/// `externalValue` field are mutually exclusive.
 String? get externalValue;
/// Create a copy of Example
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExampleCopyWith<Example> get copyWith => _$ExampleCopyWithImpl<Example>(this as Example, _$identity);

  /// Serializes this Example to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Example&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.externalValue, externalValue) || other.externalValue == externalValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,description,const DeepCollectionEquality().hash(value),externalValue);

@override
String toString() {
  return 'Example(summary: $summary, description: $description, value: $value, externalValue: $externalValue)';
}


}

/// @nodoc
abstract mixin class $ExampleCopyWith<$Res>  {
  factory $ExampleCopyWith(Example value, $Res Function(Example) _then) = _$ExampleCopyWithImpl;
@useResult
$Res call({
 String? summary, String? description, dynamic value, String? externalValue
});




}
/// @nodoc
class _$ExampleCopyWithImpl<$Res>
    implements $ExampleCopyWith<$Res> {
  _$ExampleCopyWithImpl(this._self, this._then);

  final Example _self;
  final $Res Function(Example) _then;

/// Create a copy of Example
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = freezed,Object? description = freezed,Object? value = freezed,Object? externalValue = freezed,}) {
  return _then(_self.copyWith(
summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,externalValue: freezed == externalValue ? _self.externalValue : externalValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Example].
extension ExamplePatterns on Example {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Example value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Example() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Example value)  $default,){
final _that = this;
switch (_that) {
case _Example():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Example value)?  $default,){
final _that = this;
switch (_that) {
case _Example() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? summary,  String? description,  dynamic value,  String? externalValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Example() when $default != null:
return $default(_that.summary,_that.description,_that.value,_that.externalValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? summary,  String? description,  dynamic value,  String? externalValue)  $default,) {final _that = this;
switch (_that) {
case _Example():
return $default(_that.summary,_that.description,_that.value,_that.externalValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? summary,  String? description,  dynamic value,  String? externalValue)?  $default,) {final _that = this;
switch (_that) {
case _Example() when $default != null:
return $default(_that.summary,_that.description,_that.value,_that.externalValue);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _Example implements Example {
  const _Example({this.summary, this.description, this.value, this.externalValue});
  factory _Example.fromJson(Map<String, dynamic> json) => _$ExampleFromJson(json);

/// A short description for the example.
@override final  String? summary;
/// A long description for the example.
@override final  String? description;
/// Embedded literal example. The `value` field and `externalValue` field
/// are mutually exclusive.
@override final  dynamic value;
/// A URL that points to the literal example. The `value` field and
/// `externalValue` field are mutually exclusive.
@override final  String? externalValue;

/// Create a copy of Example
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExampleCopyWith<_Example> get copyWith => __$ExampleCopyWithImpl<_Example>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExampleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Example&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.externalValue, externalValue) || other.externalValue == externalValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,summary,description,const DeepCollectionEquality().hash(value),externalValue);

@override
String toString() {
  return 'Example(summary: $summary, description: $description, value: $value, externalValue: $externalValue)';
}


}

/// @nodoc
abstract mixin class _$ExampleCopyWith<$Res> implements $ExampleCopyWith<$Res> {
  factory _$ExampleCopyWith(_Example value, $Res Function(_Example) _then) = __$ExampleCopyWithImpl;
@override @useResult
$Res call({
 String? summary, String? description, dynamic value, String? externalValue
});




}
/// @nodoc
class __$ExampleCopyWithImpl<$Res>
    implements _$ExampleCopyWith<$Res> {
  __$ExampleCopyWithImpl(this._self, this._then);

  final _Example _self;
  final $Res Function(_Example) _then;

/// Create a copy of Example
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = freezed,Object? description = freezed,Object? value = freezed,Object? externalValue = freezed,}) {
  return _then(_Example(
summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,externalValue: freezed == externalValue ? _self.externalValue : externalValue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
