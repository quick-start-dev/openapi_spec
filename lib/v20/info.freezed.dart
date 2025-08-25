// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Info {

/// The title of the API.
 String get title;/// The version of the API.
 String get version;/// A short description of the API.
 String? get description;/// A URL to the API's terms of service.
 String? get termsOfService;/// The contact information for the API.
 Contact? get contact;/// The license information for the API.
 License? get license;/// A short summary of the API.
 String? get summary;/// Vendor extensions (keys like `x-*`).
@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? get extensions;
/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoCopyWith<Info> get copyWith => _$InfoCopyWithImpl<Info>(this as Info, _$identity);

  /// Serializes this Info to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Info&&(identical(other.title, title) || other.title == title)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&(identical(other.termsOfService, termsOfService) || other.termsOfService == termsOfService)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.license, license) || other.license == license)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.extensions, extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,version,description,termsOfService,contact,license,summary,const DeepCollectionEquality().hash(extensions));

@override
String toString() {
  return 'Info(title: $title, version: $version, description: $description, termsOfService: $termsOfService, contact: $contact, license: $license, summary: $summary, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class $InfoCopyWith<$Res>  {
  factory $InfoCopyWith(Info value, $Res Function(Info) _then) = _$InfoCopyWithImpl;
@useResult
$Res call({
 String title, String version, String? description, String? termsOfService, Contact? contact, License? license, String? summary,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


$ContactCopyWith<$Res>? get contact;$LicenseCopyWith<$Res>? get license;

}
/// @nodoc
class _$InfoCopyWithImpl<$Res>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._self, this._then);

  final Info _self;
  final $Res Function(Info) _then;

/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? version = null,Object? description = freezed,Object? termsOfService = freezed,Object? contact = freezed,Object? license = freezed,Object? summary = freezed,Object? extensions = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,termsOfService: freezed == termsOfService ? _self.termsOfService : termsOfService // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as License?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,extensions: freezed == extensions ? _self.extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LicenseCopyWith<$Res>? get license {
    if (_self.license == null) {
    return null;
  }

  return $LicenseCopyWith<$Res>(_self.license!, (value) {
    return _then(_self.copyWith(license: value));
  });
}
}


/// Adds pattern-matching-related methods to [Info].
extension InfoPatterns on Info {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Info value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Info() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Info value)  $default,){
final _that = this;
switch (_that) {
case _Info():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Info value)?  $default,){
final _that = this;
switch (_that) {
case _Info() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String version,  String? description,  String? termsOfService,  Contact? contact,  License? license,  String? summary, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Info() when $default != null:
return $default(_that.title,_that.version,_that.description,_that.termsOfService,_that.contact,_that.license,_that.summary,_that.extensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String version,  String? description,  String? termsOfService,  Contact? contact,  License? license,  String? summary, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)  $default,) {final _that = this;
switch (_that) {
case _Info():
return $default(_that.title,_that.version,_that.description,_that.termsOfService,_that.contact,_that.license,_that.summary,_that.extensions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String version,  String? description,  String? termsOfService,  Contact? contact,  License? license,  String? summary, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false)  Map<String, dynamic>? extensions)?  $default,) {final _that = this;
switch (_that) {
case _Info() when $default != null:
return $default(_that.title,_that.version,_that.description,_that.termsOfService,_that.contact,_that.license,_that.summary,_that.extensions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Info implements Info {
  const _Info({required this.title, required this.version, this.description, this.termsOfService, this.contact, this.license, this.summary, @JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) final  Map<String, dynamic>? extensions}): _extensions = extensions;
  factory _Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

/// The title of the API.
@override final  String title;
/// The version of the API.
@override final  String version;
/// A short description of the API.
@override final  String? description;
/// A URL to the API's terms of service.
@override final  String? termsOfService;
/// The contact information for the API.
@override final  Contact? contact;
/// The license information for the API.
@override final  License? license;
/// A short summary of the API.
@override final  String? summary;
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


/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoCopyWith<_Info> get copyWith => __$InfoCopyWithImpl<_Info>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Info&&(identical(other.title, title) || other.title == title)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&(identical(other.termsOfService, termsOfService) || other.termsOfService == termsOfService)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.license, license) || other.license == license)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._extensions, _extensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,version,description,termsOfService,contact,license,summary,const DeepCollectionEquality().hash(_extensions));

@override
String toString() {
  return 'Info(title: $title, version: $version, description: $description, termsOfService: $termsOfService, contact: $contact, license: $license, summary: $summary, extensions: $extensions)';
}


}

/// @nodoc
abstract mixin class _$InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$InfoCopyWith(_Info value, $Res Function(_Info) _then) = __$InfoCopyWithImpl;
@override @useResult
$Res call({
 String title, String version, String? description, String? termsOfService, Contact? contact, License? license, String? summary,@JsonKey(includeIfNull: false, includeFromJson: false, includeToJson: false) Map<String, dynamic>? extensions
});


@override $ContactCopyWith<$Res>? get contact;@override $LicenseCopyWith<$Res>? get license;

}
/// @nodoc
class __$InfoCopyWithImpl<$Res>
    implements _$InfoCopyWith<$Res> {
  __$InfoCopyWithImpl(this._self, this._then);

  final _Info _self;
  final $Res Function(_Info) _then;

/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? version = null,Object? description = freezed,Object? termsOfService = freezed,Object? contact = freezed,Object? license = freezed,Object? summary = freezed,Object? extensions = freezed,}) {
  return _then(_Info(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,termsOfService: freezed == termsOfService ? _self.termsOfService : termsOfService // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as License?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,extensions: freezed == extensions ? _self._extensions : extensions // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of Info
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LicenseCopyWith<$Res>? get license {
    if (_self.license == null) {
    return null;
  }

  return $LicenseCopyWith<$Res>(_self.license!, (value) {
    return _then(_self.copyWith(license: value));
  });
}
}

// dart format on
