// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_payment_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingPaymentHistoryEntity {

 int get id; int get amount; String? get accountName; int? get accountId; String get createdAt; BookingPaymentHistoryPaymentType get paymentType;
/// Create a copy of BookingPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingPaymentHistoryEntityCopyWith<BookingPaymentHistoryEntity> get copyWith => _$BookingPaymentHistoryEntityCopyWithImpl<BookingPaymentHistoryEntity>(this as BookingPaymentHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingPaymentHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,createdAt,paymentType);

@override
String toString() {
  return 'BookingPaymentHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, createdAt: $createdAt, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class $BookingPaymentHistoryEntityCopyWith<$Res>  {
  factory $BookingPaymentHistoryEntityCopyWith(BookingPaymentHistoryEntity value, $Res Function(BookingPaymentHistoryEntity) _then) = _$BookingPaymentHistoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String createdAt, BookingPaymentHistoryPaymentType paymentType
});




}
/// @nodoc
class _$BookingPaymentHistoryEntityCopyWithImpl<$Res>
    implements $BookingPaymentHistoryEntityCopyWith<$Res> {
  _$BookingPaymentHistoryEntityCopyWithImpl(this._self, this._then);

  final BookingPaymentHistoryEntity _self;
  final $Res Function(BookingPaymentHistoryEntity) _then;

/// Create a copy of BookingPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? createdAt = null,Object? paymentType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as BookingPaymentHistoryPaymentType,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingPaymentHistoryEntity].
extension BookingPaymentHistoryEntityPatterns on BookingPaymentHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingPaymentHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingPaymentHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingPaymentHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String createdAt,  BookingPaymentHistoryPaymentType paymentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.createdAt,_that.paymentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String createdAt,  BookingPaymentHistoryPaymentType paymentType)  $default,) {final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity():
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.createdAt,_that.paymentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  String? accountName,  int? accountId,  String createdAt,  BookingPaymentHistoryPaymentType paymentType)?  $default,) {final _that = this;
switch (_that) {
case _BookingPaymentHistoryEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.createdAt,_that.paymentType);case _:
  return null;

}
}

}

/// @nodoc


class _BookingPaymentHistoryEntity implements BookingPaymentHistoryEntity {
  const _BookingPaymentHistoryEntity({required this.id, required this.amount, required this.accountName, required this.accountId, required this.createdAt, this.paymentType = BookingPaymentHistoryPaymentType.payment});
  

@override final  int id;
@override final  int amount;
@override final  String? accountName;
@override final  int? accountId;
@override final  String createdAt;
@override@JsonKey() final  BookingPaymentHistoryPaymentType paymentType;

/// Create a copy of BookingPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingPaymentHistoryEntityCopyWith<_BookingPaymentHistoryEntity> get copyWith => __$BookingPaymentHistoryEntityCopyWithImpl<_BookingPaymentHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingPaymentHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,createdAt,paymentType);

@override
String toString() {
  return 'BookingPaymentHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, createdAt: $createdAt, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$BookingPaymentHistoryEntityCopyWith<$Res> implements $BookingPaymentHistoryEntityCopyWith<$Res> {
  factory _$BookingPaymentHistoryEntityCopyWith(_BookingPaymentHistoryEntity value, $Res Function(_BookingPaymentHistoryEntity) _then) = __$BookingPaymentHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String createdAt, BookingPaymentHistoryPaymentType paymentType
});




}
/// @nodoc
class __$BookingPaymentHistoryEntityCopyWithImpl<$Res>
    implements _$BookingPaymentHistoryEntityCopyWith<$Res> {
  __$BookingPaymentHistoryEntityCopyWithImpl(this._self, this._then);

  final _BookingPaymentHistoryEntity _self;
  final $Res Function(_BookingPaymentHistoryEntity) _then;

/// Create a copy of BookingPaymentHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? createdAt = null,Object? paymentType = null,}) {
  return _then(_BookingPaymentHistoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as BookingPaymentHistoryPaymentType,
  ));
}


}

/// @nodoc
mixin _$BookingSecurityRefundHistoryEntity {

 int get id; int get amount; String? get accountName; int? get accountId; String get note; SecurityPaymentHistoryType get type; String get createdAt;
/// Create a copy of BookingSecurityRefundHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSecurityRefundHistoryEntityCopyWith<BookingSecurityRefundHistoryEntity> get copyWith => _$BookingSecurityRefundHistoryEntityCopyWithImpl<BookingSecurityRefundHistoryEntity>(this as BookingSecurityRefundHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSecurityRefundHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.note, note) || other.note == note)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,note,type,createdAt);

@override
String toString() {
  return 'BookingSecurityRefundHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, note: $note, type: $type, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BookingSecurityRefundHistoryEntityCopyWith<$Res>  {
  factory $BookingSecurityRefundHistoryEntityCopyWith(BookingSecurityRefundHistoryEntity value, $Res Function(BookingSecurityRefundHistoryEntity) _then) = _$BookingSecurityRefundHistoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String note, SecurityPaymentHistoryType type, String createdAt
});




}
/// @nodoc
class _$BookingSecurityRefundHistoryEntityCopyWithImpl<$Res>
    implements $BookingSecurityRefundHistoryEntityCopyWith<$Res> {
  _$BookingSecurityRefundHistoryEntityCopyWithImpl(this._self, this._then);

  final BookingSecurityRefundHistoryEntity _self;
  final $Res Function(BookingSecurityRefundHistoryEntity) _then;

/// Create a copy of BookingSecurityRefundHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? note = null,Object? type = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SecurityPaymentHistoryType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingSecurityRefundHistoryEntity].
extension BookingSecurityRefundHistoryEntityPatterns on BookingSecurityRefundHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingSecurityRefundHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingSecurityRefundHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingSecurityRefundHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String note,  SecurityPaymentHistoryType type,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.note,_that.type,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount,  String? accountName,  int? accountId,  String note,  SecurityPaymentHistoryType type,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity():
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.note,_that.type,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount,  String? accountName,  int? accountId,  String note,  SecurityPaymentHistoryType type,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BookingSecurityRefundHistoryEntity() when $default != null:
return $default(_that.id,_that.amount,_that.accountName,_that.accountId,_that.note,_that.type,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _BookingSecurityRefundHistoryEntity implements BookingSecurityRefundHistoryEntity {
  const _BookingSecurityRefundHistoryEntity({required this.id, required this.amount, required this.accountName, required this.accountId, required this.note, required this.type, required this.createdAt});
  

@override final  int id;
@override final  int amount;
@override final  String? accountName;
@override final  int? accountId;
@override final  String note;
@override final  SecurityPaymentHistoryType type;
@override final  String createdAt;

/// Create a copy of BookingSecurityRefundHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingSecurityRefundHistoryEntityCopyWith<_BookingSecurityRefundHistoryEntity> get copyWith => __$BookingSecurityRefundHistoryEntityCopyWithImpl<_BookingSecurityRefundHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingSecurityRefundHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.note, note) || other.note == note)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,amount,accountName,accountId,note,type,createdAt);

@override
String toString() {
  return 'BookingSecurityRefundHistoryEntity(id: $id, amount: $amount, accountName: $accountName, accountId: $accountId, note: $note, type: $type, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BookingSecurityRefundHistoryEntityCopyWith<$Res> implements $BookingSecurityRefundHistoryEntityCopyWith<$Res> {
  factory _$BookingSecurityRefundHistoryEntityCopyWith(_BookingSecurityRefundHistoryEntity value, $Res Function(_BookingSecurityRefundHistoryEntity) _then) = __$BookingSecurityRefundHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount, String? accountName, int? accountId, String note, SecurityPaymentHistoryType type, String createdAt
});




}
/// @nodoc
class __$BookingSecurityRefundHistoryEntityCopyWithImpl<$Res>
    implements _$BookingSecurityRefundHistoryEntityCopyWith<$Res> {
  __$BookingSecurityRefundHistoryEntityCopyWithImpl(this._self, this._then);

  final _BookingSecurityRefundHistoryEntity _self;
  final $Res Function(_BookingSecurityRefundHistoryEntity) _then;

/// Create a copy of BookingSecurityRefundHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? accountName = freezed,Object? accountId = freezed,Object? note = null,Object? type = null,Object? createdAt = null,}) {
  return _then(_BookingSecurityRefundHistoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,accountName: freezed == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as int?,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SecurityPaymentHistoryType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BookingSecuritySummaryEntity {

 int get totalSecurityAmount; int get totalRefunded; int get totalDeducted; int get pendingDeposit;
/// Create a copy of BookingSecuritySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSecuritySummaryEntityCopyWith<BookingSecuritySummaryEntity> get copyWith => _$BookingSecuritySummaryEntityCopyWithImpl<BookingSecuritySummaryEntity>(this as BookingSecuritySummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSecuritySummaryEntity&&(identical(other.totalSecurityAmount, totalSecurityAmount) || other.totalSecurityAmount == totalSecurityAmount)&&(identical(other.totalRefunded, totalRefunded) || other.totalRefunded == totalRefunded)&&(identical(other.totalDeducted, totalDeducted) || other.totalDeducted == totalDeducted)&&(identical(other.pendingDeposit, pendingDeposit) || other.pendingDeposit == pendingDeposit));
}


@override
int get hashCode => Object.hash(runtimeType,totalSecurityAmount,totalRefunded,totalDeducted,pendingDeposit);

@override
String toString() {
  return 'BookingSecuritySummaryEntity(totalSecurityAmount: $totalSecurityAmount, totalRefunded: $totalRefunded, totalDeducted: $totalDeducted, pendingDeposit: $pendingDeposit)';
}


}

/// @nodoc
abstract mixin class $BookingSecuritySummaryEntityCopyWith<$Res>  {
  factory $BookingSecuritySummaryEntityCopyWith(BookingSecuritySummaryEntity value, $Res Function(BookingSecuritySummaryEntity) _then) = _$BookingSecuritySummaryEntityCopyWithImpl;
@useResult
$Res call({
 int totalSecurityAmount, int totalRefunded, int totalDeducted, int pendingDeposit
});




}
/// @nodoc
class _$BookingSecuritySummaryEntityCopyWithImpl<$Res>
    implements $BookingSecuritySummaryEntityCopyWith<$Res> {
  _$BookingSecuritySummaryEntityCopyWithImpl(this._self, this._then);

  final BookingSecuritySummaryEntity _self;
  final $Res Function(BookingSecuritySummaryEntity) _then;

/// Create a copy of BookingSecuritySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSecurityAmount = null,Object? totalRefunded = null,Object? totalDeducted = null,Object? pendingDeposit = null,}) {
  return _then(_self.copyWith(
totalSecurityAmount: null == totalSecurityAmount ? _self.totalSecurityAmount : totalSecurityAmount // ignore: cast_nullable_to_non_nullable
as int,totalRefunded: null == totalRefunded ? _self.totalRefunded : totalRefunded // ignore: cast_nullable_to_non_nullable
as int,totalDeducted: null == totalDeducted ? _self.totalDeducted : totalDeducted // ignore: cast_nullable_to_non_nullable
as int,pendingDeposit: null == pendingDeposit ? _self.pendingDeposit : pendingDeposit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingSecuritySummaryEntity].
extension BookingSecuritySummaryEntityPatterns on BookingSecuritySummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingSecuritySummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingSecuritySummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingSecuritySummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSecurityAmount,  int totalRefunded,  int totalDeducted,  int pendingDeposit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity() when $default != null:
return $default(_that.totalSecurityAmount,_that.totalRefunded,_that.totalDeducted,_that.pendingDeposit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSecurityAmount,  int totalRefunded,  int totalDeducted,  int pendingDeposit)  $default,) {final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity():
return $default(_that.totalSecurityAmount,_that.totalRefunded,_that.totalDeducted,_that.pendingDeposit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSecurityAmount,  int totalRefunded,  int totalDeducted,  int pendingDeposit)?  $default,) {final _that = this;
switch (_that) {
case _BookingSecuritySummaryEntity() when $default != null:
return $default(_that.totalSecurityAmount,_that.totalRefunded,_that.totalDeducted,_that.pendingDeposit);case _:
  return null;

}
}

}

/// @nodoc


class _BookingSecuritySummaryEntity implements BookingSecuritySummaryEntity {
  const _BookingSecuritySummaryEntity({required this.totalSecurityAmount, required this.totalRefunded, required this.totalDeducted, required this.pendingDeposit});
  

@override final  int totalSecurityAmount;
@override final  int totalRefunded;
@override final  int totalDeducted;
@override final  int pendingDeposit;

/// Create a copy of BookingSecuritySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingSecuritySummaryEntityCopyWith<_BookingSecuritySummaryEntity> get copyWith => __$BookingSecuritySummaryEntityCopyWithImpl<_BookingSecuritySummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingSecuritySummaryEntity&&(identical(other.totalSecurityAmount, totalSecurityAmount) || other.totalSecurityAmount == totalSecurityAmount)&&(identical(other.totalRefunded, totalRefunded) || other.totalRefunded == totalRefunded)&&(identical(other.totalDeducted, totalDeducted) || other.totalDeducted == totalDeducted)&&(identical(other.pendingDeposit, pendingDeposit) || other.pendingDeposit == pendingDeposit));
}


@override
int get hashCode => Object.hash(runtimeType,totalSecurityAmount,totalRefunded,totalDeducted,pendingDeposit);

@override
String toString() {
  return 'BookingSecuritySummaryEntity(totalSecurityAmount: $totalSecurityAmount, totalRefunded: $totalRefunded, totalDeducted: $totalDeducted, pendingDeposit: $pendingDeposit)';
}


}

/// @nodoc
abstract mixin class _$BookingSecuritySummaryEntityCopyWith<$Res> implements $BookingSecuritySummaryEntityCopyWith<$Res> {
  factory _$BookingSecuritySummaryEntityCopyWith(_BookingSecuritySummaryEntity value, $Res Function(_BookingSecuritySummaryEntity) _then) = __$BookingSecuritySummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalSecurityAmount, int totalRefunded, int totalDeducted, int pendingDeposit
});




}
/// @nodoc
class __$BookingSecuritySummaryEntityCopyWithImpl<$Res>
    implements _$BookingSecuritySummaryEntityCopyWith<$Res> {
  __$BookingSecuritySummaryEntityCopyWithImpl(this._self, this._then);

  final _BookingSecuritySummaryEntity _self;
  final $Res Function(_BookingSecuritySummaryEntity) _then;

/// Create a copy of BookingSecuritySummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSecurityAmount = null,Object? totalRefunded = null,Object? totalDeducted = null,Object? pendingDeposit = null,}) {
  return _then(_BookingSecuritySummaryEntity(
totalSecurityAmount: null == totalSecurityAmount ? _self.totalSecurityAmount : totalSecurityAmount // ignore: cast_nullable_to_non_nullable
as int,totalRefunded: null == totalRefunded ? _self.totalRefunded : totalRefunded // ignore: cast_nullable_to_non_nullable
as int,totalDeducted: null == totalDeducted ? _self.totalDeducted : totalDeducted // ignore: cast_nullable_to_non_nullable
as int,pendingDeposit: null == pendingDeposit ? _self.pendingDeposit : pendingDeposit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
