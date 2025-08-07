// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Xml {

 String? get name; String? get namespace; String? get prefix; bool? get attribute; bool? get wrapped;
/// Create a copy of Xml
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XmlCopyWith<Xml> get copyWith => _$XmlCopyWithImpl<Xml>(this as Xml, _$identity);

  /// Serializes this Xml to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Xml&&(identical(other.name, name) || other.name == name)&&(identical(other.namespace, namespace) || other.namespace == namespace)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.attribute, attribute) || other.attribute == attribute)&&(identical(other.wrapped, wrapped) || other.wrapped == wrapped));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,namespace,prefix,attribute,wrapped);

@override
String toString() {
  return 'Xml(name: $name, namespace: $namespace, prefix: $prefix, attribute: $attribute, wrapped: $wrapped)';
}


}

/// @nodoc
abstract mixin class $XmlCopyWith<$Res>  {
  factory $XmlCopyWith(Xml value, $Res Function(Xml) _then) = _$XmlCopyWithImpl;
@useResult
$Res call({
 String? name, String? namespace, String? prefix, bool? attribute, bool? wrapped
});




}
/// @nodoc
class _$XmlCopyWithImpl<$Res>
    implements $XmlCopyWith<$Res> {
  _$XmlCopyWithImpl(this._self, this._then);

  final Xml _self;
  final $Res Function(Xml) _then;

/// Create a copy of Xml
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? namespace = freezed,Object? prefix = freezed,Object? attribute = freezed,Object? wrapped = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,namespace: freezed == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as bool?,wrapped: freezed == wrapped ? _self.wrapped : wrapped // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Xml].
extension XmlPatterns on Xml {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Xml value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Xml() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Xml value)  $default,){
final _that = this;
switch (_that) {
case _Xml():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Xml value)?  $default,){
final _that = this;
switch (_that) {
case _Xml() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? namespace,  String? prefix,  bool? attribute,  bool? wrapped)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Xml() when $default != null:
return $default(_that.name,_that.namespace,_that.prefix,_that.attribute,_that.wrapped);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? namespace,  String? prefix,  bool? attribute,  bool? wrapped)  $default,) {final _that = this;
switch (_that) {
case _Xml():
return $default(_that.name,_that.namespace,_that.prefix,_that.attribute,_that.wrapped);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? namespace,  String? prefix,  bool? attribute,  bool? wrapped)?  $default,) {final _that = this;
switch (_that) {
case _Xml() when $default != null:
return $default(_that.name,_that.namespace,_that.prefix,_that.attribute,_that.wrapped);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Xml implements Xml {
  const _Xml({this.name, this.namespace, this.prefix, this.attribute, this.wrapped});
  factory _Xml.fromJson(Map<String, dynamic> json) => _$XmlFromJson(json);

@override final  String? name;
@override final  String? namespace;
@override final  String? prefix;
@override final  bool? attribute;
@override final  bool? wrapped;

/// Create a copy of Xml
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$XmlCopyWith<_Xml> get copyWith => __$XmlCopyWithImpl<_Xml>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$XmlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Xml&&(identical(other.name, name) || other.name == name)&&(identical(other.namespace, namespace) || other.namespace == namespace)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.attribute, attribute) || other.attribute == attribute)&&(identical(other.wrapped, wrapped) || other.wrapped == wrapped));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,namespace,prefix,attribute,wrapped);

@override
String toString() {
  return 'Xml(name: $name, namespace: $namespace, prefix: $prefix, attribute: $attribute, wrapped: $wrapped)';
}


}

/// @nodoc
abstract mixin class _$XmlCopyWith<$Res> implements $XmlCopyWith<$Res> {
  factory _$XmlCopyWith(_Xml value, $Res Function(_Xml) _then) = __$XmlCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? namespace, String? prefix, bool? attribute, bool? wrapped
});




}
/// @nodoc
class __$XmlCopyWithImpl<$Res>
    implements _$XmlCopyWith<$Res> {
  __$XmlCopyWithImpl(this._self, this._then);

  final _Xml _self;
  final $Res Function(_Xml) _then;

/// Create a copy of Xml
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? namespace = freezed,Object? prefix = freezed,Object? attribute = freezed,Object? wrapped = freezed,}) {
  return _then(_Xml(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,namespace: freezed == namespace ? _self.namespace : namespace // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as bool?,wrapped: freezed == wrapped ? _self.wrapped : wrapped // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
