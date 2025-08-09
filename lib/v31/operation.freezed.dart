// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Operation {

/// A list of tags for API documentation.
 List<String> get tags;/// A short summary of what the operation does.
 String? get summary;/// A verbose explanation of the operation behavior.
/// CommonMark syntax MAY be used for rich text representation.
 String? get description;/// Additional external documentation for this operation.
 ExternalDocs? get externalDocs;/// A unique string used to identify the operation.
 String? get operationId;/// A list of parameters for the operation.
 List<Parameter> get parameters;/// The request body of the operation.
 RequestBody? get requestBody;/// The possible responses for the operation.
 Map<String, Response> get responses;/// A declaration of which security schemes are required for this operation.
 List<SecurityRequirement> get security;/// Specifies whether the operation is deprecated.
 bool? get deprecated;/// An alternative servers array to service this operation.
/// If a servers array is specified at the Path Item Object or
/// OpenAPI Object level, it will be overridden by this value.
 List<Server>? get servers;
/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperationCopyWith<Operation> get copyWith => _$OperationCopyWithImpl<Operation>(this as Operation, _$identity);

  /// Serializes this Operation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Operation&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&(identical(other.requestBody, requestBody) || other.requestBody == requestBody)&&const DeepCollectionEquality().equals(other.responses, responses)&&const DeepCollectionEquality().equals(other.security, security)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&const DeepCollectionEquality().equals(other.servers, servers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tags),summary,description,externalDocs,operationId,const DeepCollectionEquality().hash(parameters),requestBody,const DeepCollectionEquality().hash(responses),const DeepCollectionEquality().hash(security),deprecated,const DeepCollectionEquality().hash(servers));

@override
String toString() {
  return 'Operation(tags: $tags, summary: $summary, description: $description, externalDocs: $externalDocs, operationId: $operationId, parameters: $parameters, requestBody: $requestBody, responses: $responses, security: $security, deprecated: $deprecated, servers: $servers)';
}


}

/// @nodoc
abstract mixin class $OperationCopyWith<$Res>  {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) _then) = _$OperationCopyWithImpl;
@useResult
$Res call({
 List<String> tags, String? summary, String? description, ExternalDocs? externalDocs, String? operationId, List<Parameter> parameters, RequestBody? requestBody, Map<String, Response> responses, List<SecurityRequirement> security, bool? deprecated, List<Server>? servers
});


$ExternalDocsCopyWith<$Res>? get externalDocs;$RequestBodyCopyWith<$Res>? get requestBody;

}
/// @nodoc
class _$OperationCopyWithImpl<$Res>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._self, this._then);

  final Operation _self;
  final $Res Function(Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tags = null,Object? summary = freezed,Object? description = freezed,Object? externalDocs = freezed,Object? operationId = freezed,Object? parameters = null,Object? requestBody = freezed,Object? responses = null,Object? security = null,Object? deprecated = freezed,Object? servers = freezed,}) {
  return _then(_self.copyWith(
tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,operationId: freezed == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String?,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as RequestBody?,responses: null == responses ? _self.responses : responses // ignore: cast_nullable_to_non_nullable
as Map<String, Response>,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,servers: freezed == servers ? _self.servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>?,
  ));
}
/// Create a copy of Operation
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
}/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestBodyCopyWith<$Res>? get requestBody {
    if (_self.requestBody == null) {
    return null;
  }

  return $RequestBodyCopyWith<$Res>(_self.requestBody!, (value) {
    return _then(_self.copyWith(requestBody: value));
  });
}
}


/// Adds pattern-matching-related methods to [Operation].
extension OperationPatterns on Operation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Operation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Operation value)  $default,){
final _that = this;
switch (_that) {
case _Operation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Operation value)?  $default,){
final _that = this;
switch (_that) {
case _Operation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> tags,  String? summary,  String? description,  ExternalDocs? externalDocs,  String? operationId,  List<Parameter> parameters,  RequestBody? requestBody,  Map<String, Response> responses,  List<SecurityRequirement> security,  bool? deprecated,  List<Server>? servers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.tags,_that.summary,_that.description,_that.externalDocs,_that.operationId,_that.parameters,_that.requestBody,_that.responses,_that.security,_that.deprecated,_that.servers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> tags,  String? summary,  String? description,  ExternalDocs? externalDocs,  String? operationId,  List<Parameter> parameters,  RequestBody? requestBody,  Map<String, Response> responses,  List<SecurityRequirement> security,  bool? deprecated,  List<Server>? servers)  $default,) {final _that = this;
switch (_that) {
case _Operation():
return $default(_that.tags,_that.summary,_that.description,_that.externalDocs,_that.operationId,_that.parameters,_that.requestBody,_that.responses,_that.security,_that.deprecated,_that.servers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> tags,  String? summary,  String? description,  ExternalDocs? externalDocs,  String? operationId,  List<Parameter> parameters,  RequestBody? requestBody,  Map<String, Response> responses,  List<SecurityRequirement> security,  bool? deprecated,  List<Server>? servers)?  $default,) {final _that = this;
switch (_that) {
case _Operation() when $default != null:
return $default(_that.tags,_that.summary,_that.description,_that.externalDocs,_that.operationId,_that.parameters,_that.requestBody,_that.responses,_that.security,_that.deprecated,_that.servers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _Operation implements Operation {
  const _Operation({final  List<String> tags = const [], this.summary, this.description, this.externalDocs, this.operationId, final  List<Parameter> parameters = const [], this.requestBody, final  Map<String, Response> responses = const {}, final  List<SecurityRequirement> security = const [], this.deprecated, final  List<Server>? servers}): _tags = tags,_parameters = parameters,_responses = responses,_security = security,_servers = servers;
  factory _Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);

/// A list of tags for API documentation.
 final  List<String> _tags;
/// A list of tags for API documentation.
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// A short summary of what the operation does.
@override final  String? summary;
/// A verbose explanation of the operation behavior.
/// CommonMark syntax MAY be used for rich text representation.
@override final  String? description;
/// Additional external documentation for this operation.
@override final  ExternalDocs? externalDocs;
/// A unique string used to identify the operation.
@override final  String? operationId;
/// A list of parameters for the operation.
 final  List<Parameter> _parameters;
/// A list of parameters for the operation.
@override@JsonKey() List<Parameter> get parameters {
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parameters);
}

/// The request body of the operation.
@override final  RequestBody? requestBody;
/// The possible responses for the operation.
 final  Map<String, Response> _responses;
/// The possible responses for the operation.
@override@JsonKey() Map<String, Response> get responses {
  if (_responses is EqualUnmodifiableMapView) return _responses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_responses);
}

/// A declaration of which security schemes are required for this operation.
 final  List<SecurityRequirement> _security;
/// A declaration of which security schemes are required for this operation.
@override@JsonKey() List<SecurityRequirement> get security {
  if (_security is EqualUnmodifiableListView) return _security;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_security);
}

/// Specifies whether the operation is deprecated.
@override final  bool? deprecated;
/// An alternative servers array to service this operation.
/// If a servers array is specified at the Path Item Object or
/// OpenAPI Object level, it will be overridden by this value.
 final  List<Server>? _servers;
/// An alternative servers array to service this operation.
/// If a servers array is specified at the Path Item Object or
/// OpenAPI Object level, it will be overridden by this value.
@override List<Server>? get servers {
  final value = _servers;
  if (value == null) return null;
  if (_servers is EqualUnmodifiableListView) return _servers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperationCopyWith<_Operation> get copyWith => __$OperationCopyWithImpl<_Operation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Operation&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.description, description) || other.description == description)&&(identical(other.externalDocs, externalDocs) || other.externalDocs == externalDocs)&&(identical(other.operationId, operationId) || other.operationId == operationId)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&(identical(other.requestBody, requestBody) || other.requestBody == requestBody)&&const DeepCollectionEquality().equals(other._responses, _responses)&&const DeepCollectionEquality().equals(other._security, _security)&&(identical(other.deprecated, deprecated) || other.deprecated == deprecated)&&const DeepCollectionEquality().equals(other._servers, _servers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tags),summary,description,externalDocs,operationId,const DeepCollectionEquality().hash(_parameters),requestBody,const DeepCollectionEquality().hash(_responses),const DeepCollectionEquality().hash(_security),deprecated,const DeepCollectionEquality().hash(_servers));

@override
String toString() {
  return 'Operation(tags: $tags, summary: $summary, description: $description, externalDocs: $externalDocs, operationId: $operationId, parameters: $parameters, requestBody: $requestBody, responses: $responses, security: $security, deprecated: $deprecated, servers: $servers)';
}


}

/// @nodoc
abstract mixin class _$OperationCopyWith<$Res> implements $OperationCopyWith<$Res> {
  factory _$OperationCopyWith(_Operation value, $Res Function(_Operation) _then) = __$OperationCopyWithImpl;
@override @useResult
$Res call({
 List<String> tags, String? summary, String? description, ExternalDocs? externalDocs, String? operationId, List<Parameter> parameters, RequestBody? requestBody, Map<String, Response> responses, List<SecurityRequirement> security, bool? deprecated, List<Server>? servers
});


@override $ExternalDocsCopyWith<$Res>? get externalDocs;@override $RequestBodyCopyWith<$Res>? get requestBody;

}
/// @nodoc
class __$OperationCopyWithImpl<$Res>
    implements _$OperationCopyWith<$Res> {
  __$OperationCopyWithImpl(this._self, this._then);

  final _Operation _self;
  final $Res Function(_Operation) _then;

/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tags = null,Object? summary = freezed,Object? description = freezed,Object? externalDocs = freezed,Object? operationId = freezed,Object? parameters = null,Object? requestBody = freezed,Object? responses = null,Object? security = null,Object? deprecated = freezed,Object? servers = freezed,}) {
  return _then(_Operation(
tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,externalDocs: freezed == externalDocs ? _self.externalDocs : externalDocs // ignore: cast_nullable_to_non_nullable
as ExternalDocs?,operationId: freezed == operationId ? _self.operationId : operationId // ignore: cast_nullable_to_non_nullable
as String?,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>,requestBody: freezed == requestBody ? _self.requestBody : requestBody // ignore: cast_nullable_to_non_nullable
as RequestBody?,responses: null == responses ? _self._responses : responses // ignore: cast_nullable_to_non_nullable
as Map<String, Response>,security: null == security ? _self._security : security // ignore: cast_nullable_to_non_nullable
as List<SecurityRequirement>,deprecated: freezed == deprecated ? _self.deprecated : deprecated // ignore: cast_nullable_to_non_nullable
as bool?,servers: freezed == servers ? _self._servers : servers // ignore: cast_nullable_to_non_nullable
as List<Server>?,
  ));
}

/// Create a copy of Operation
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
}/// Create a copy of Operation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestBodyCopyWith<$Res>? get requestBody {
    if (_self.requestBody == null) {
    return null;
  }

  return $RequestBodyCopyWith<$Res>(_self.requestBody!, (value) {
    return _then(_self.copyWith(requestBody: value));
  });
}
}

// dart format on
