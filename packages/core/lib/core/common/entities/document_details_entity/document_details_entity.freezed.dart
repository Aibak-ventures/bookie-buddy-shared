// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentDetailsEntity {

 DocumentDetailsStatus get status; int get totalCount; int get uploadedCount;
/// Create a copy of DocumentDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentDetailsEntityCopyWith<DocumentDetailsEntity> get copyWith => _$DocumentDetailsEntityCopyWithImpl<DocumentDetailsEntity>(this as DocumentDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentDetailsEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.uploadedCount, uploadedCount) || other.uploadedCount == uploadedCount));
}


@override
int get hashCode => Object.hash(runtimeType,status,totalCount,uploadedCount);

@override
String toString() {
  return 'DocumentDetailsEntity(status: $status, totalCount: $totalCount, uploadedCount: $uploadedCount)';
}


}

/// @nodoc
abstract mixin class $DocumentDetailsEntityCopyWith<$Res>  {
  factory $DocumentDetailsEntityCopyWith(DocumentDetailsEntity value, $Res Function(DocumentDetailsEntity) _then) = _$DocumentDetailsEntityCopyWithImpl;
@useResult
$Res call({
 DocumentDetailsStatus status, int totalCount, int uploadedCount
});




}
/// @nodoc
class _$DocumentDetailsEntityCopyWithImpl<$Res>
    implements $DocumentDetailsEntityCopyWith<$Res> {
  _$DocumentDetailsEntityCopyWithImpl(this._self, this._then);

  final DocumentDetailsEntity _self;
  final $Res Function(DocumentDetailsEntity) _then;

/// Create a copy of DocumentDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? totalCount = null,Object? uploadedCount = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocumentDetailsStatus,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,uploadedCount: null == uploadedCount ? _self.uploadedCount : uploadedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentDetailsEntity].
extension DocumentDetailsEntityPatterns on DocumentDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _DocumentDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DocumentDetailsStatus status,  int totalCount,  int uploadedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentDetailsEntity() when $default != null:
return $default(_that.status,_that.totalCount,_that.uploadedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DocumentDetailsStatus status,  int totalCount,  int uploadedCount)  $default,) {final _that = this;
switch (_that) {
case _DocumentDetailsEntity():
return $default(_that.status,_that.totalCount,_that.uploadedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DocumentDetailsStatus status,  int totalCount,  int uploadedCount)?  $default,) {final _that = this;
switch (_that) {
case _DocumentDetailsEntity() when $default != null:
return $default(_that.status,_that.totalCount,_that.uploadedCount);case _:
  return null;

}
}

}

/// @nodoc


class _DocumentDetailsEntity implements DocumentDetailsEntity {
  const _DocumentDetailsEntity({required this.status, required this.totalCount, required this.uploadedCount});
  

@override final  DocumentDetailsStatus status;
@override final  int totalCount;
@override final  int uploadedCount;

/// Create a copy of DocumentDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentDetailsEntityCopyWith<_DocumentDetailsEntity> get copyWith => __$DocumentDetailsEntityCopyWithImpl<_DocumentDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentDetailsEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.uploadedCount, uploadedCount) || other.uploadedCount == uploadedCount));
}


@override
int get hashCode => Object.hash(runtimeType,status,totalCount,uploadedCount);

@override
String toString() {
  return 'DocumentDetailsEntity(status: $status, totalCount: $totalCount, uploadedCount: $uploadedCount)';
}


}

/// @nodoc
abstract mixin class _$DocumentDetailsEntityCopyWith<$Res> implements $DocumentDetailsEntityCopyWith<$Res> {
  factory _$DocumentDetailsEntityCopyWith(_DocumentDetailsEntity value, $Res Function(_DocumentDetailsEntity) _then) = __$DocumentDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 DocumentDetailsStatus status, int totalCount, int uploadedCount
});




}
/// @nodoc
class __$DocumentDetailsEntityCopyWithImpl<$Res>
    implements _$DocumentDetailsEntityCopyWith<$Res> {
  __$DocumentDetailsEntityCopyWithImpl(this._self, this._then);

  final _DocumentDetailsEntity _self;
  final $Res Function(_DocumentDetailsEntity) _then;

/// Create a copy of DocumentDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? totalCount = null,Object? uploadedCount = null,}) {
  return _then(_DocumentDetailsEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DocumentDetailsStatus,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,uploadedCount: null == uploadedCount ? _self.uploadedCount : uploadedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
