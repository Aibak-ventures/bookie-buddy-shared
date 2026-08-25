// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingDetailsEntity {

 int get id; String get invoiceId; String get createdAt; String get bookedDate; String? get bookingCompletedDate; String? get pickupDate; String get returnDate; String? get coolingPeriodDate; int get totalAmount; int get totalAmountWithSecurity; int? get discountAmount; int get paidAmount; int get paidAmountWithSecurity; int get totalPayable; PurchaseMode get purchaseMode; BookingStatus get bookingStatus; PaymentStatus get paymentStatus; DeliveryStatus get deliveryStatus; String? get staffName; int? get staffId; BookingOtherDetailsEntity get otherDetails; String? get address; ClientEntity get client; String? get description; List<ProductInfoEntity> get bookedItems; List<AdditionalChargesEntity> get additionalCharges; List<BookingPaymentHistoryEntity> get paymentHistory; List<BookingSecurityRefundHistoryEntity> get securityTransactionHistory; BookingSecuritySummaryEntity get securityTransactionSummary; List<BookingRefundHistoryEntity> get refundHistory; BookingSecurityPaymentEntity? get securityPayment; String? get pickupTime; String? get returnTime; int get refundTotal; int get refundableBalance; List<String> get documents; DocumentDetailsEntity? get documentsDetails; BookingRentalUnit get rentalUnit; bool get isSecurityPaid; int get balanceAmount; List<AppliedTaxEntity> get appliedTaxes;
/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDetailsEntityCopyWith<BookingDetailsEntity> get copyWith => _$BookingDetailsEntityCopyWithImpl<BookingDetailsEntity>(this as BookingDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bookedDate, bookedDate) || other.bookedDate == bookedDate)&&(identical(other.bookingCompletedDate, bookingCompletedDate) || other.bookingCompletedDate == bookingCompletedDate)&&(identical(other.pickupDate, pickupDate) || other.pickupDate == pickupDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.coolingPeriodDate, coolingPeriodDate) || other.coolingPeriodDate == coolingPeriodDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.totalAmountWithSecurity, totalAmountWithSecurity) || other.totalAmountWithSecurity == totalAmountWithSecurity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.paidAmountWithSecurity, paidAmountWithSecurity) || other.paidAmountWithSecurity == paidAmountWithSecurity)&&(identical(other.totalPayable, totalPayable) || other.totalPayable == totalPayable)&&(identical(other.purchaseMode, purchaseMode) || other.purchaseMode == purchaseMode)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.staffName, staffName) || other.staffName == staffName)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.otherDetails, otherDetails) || other.otherDetails == otherDetails)&&(identical(other.address, address) || other.address == address)&&(identical(other.client, client) || other.client == client)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.bookedItems, bookedItems)&&const DeepCollectionEquality().equals(other.additionalCharges, additionalCharges)&&const DeepCollectionEquality().equals(other.paymentHistory, paymentHistory)&&const DeepCollectionEquality().equals(other.securityTransactionHistory, securityTransactionHistory)&&(identical(other.securityTransactionSummary, securityTransactionSummary) || other.securityTransactionSummary == securityTransactionSummary)&&const DeepCollectionEquality().equals(other.refundHistory, refundHistory)&&(identical(other.securityPayment, securityPayment) || other.securityPayment == securityPayment)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.returnTime, returnTime) || other.returnTime == returnTime)&&(identical(other.refundTotal, refundTotal) || other.refundTotal == refundTotal)&&(identical(other.refundableBalance, refundableBalance) || other.refundableBalance == refundableBalance)&&const DeepCollectionEquality().equals(other.documents, documents)&&(identical(other.documentsDetails, documentsDetails) || other.documentsDetails == documentsDetails)&&(identical(other.rentalUnit, rentalUnit) || other.rentalUnit == rentalUnit)&&(identical(other.isSecurityPaid, isSecurityPaid) || other.isSecurityPaid == isSecurityPaid)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount)&&const DeepCollectionEquality().equals(other.appliedTaxes, appliedTaxes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,invoiceId,createdAt,bookedDate,bookingCompletedDate,pickupDate,returnDate,coolingPeriodDate,totalAmount,totalAmountWithSecurity,discountAmount,paidAmount,paidAmountWithSecurity,totalPayable,purchaseMode,bookingStatus,paymentStatus,deliveryStatus,staffName,staffId,otherDetails,address,client,description,const DeepCollectionEquality().hash(bookedItems),const DeepCollectionEquality().hash(additionalCharges),const DeepCollectionEquality().hash(paymentHistory),const DeepCollectionEquality().hash(securityTransactionHistory),securityTransactionSummary,const DeepCollectionEquality().hash(refundHistory),securityPayment,pickupTime,returnTime,refundTotal,refundableBalance,const DeepCollectionEquality().hash(documents),documentsDetails,rentalUnit,isSecurityPaid,balanceAmount,const DeepCollectionEquality().hash(appliedTaxes)]);

@override
String toString() {
  return 'BookingDetailsEntity(id: $id, invoiceId: $invoiceId, createdAt: $createdAt, bookedDate: $bookedDate, bookingCompletedDate: $bookingCompletedDate, pickupDate: $pickupDate, returnDate: $returnDate, coolingPeriodDate: $coolingPeriodDate, totalAmount: $totalAmount, totalAmountWithSecurity: $totalAmountWithSecurity, discountAmount: $discountAmount, paidAmount: $paidAmount, paidAmountWithSecurity: $paidAmountWithSecurity, totalPayable: $totalPayable, purchaseMode: $purchaseMode, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, staffName: $staffName, staffId: $staffId, otherDetails: $otherDetails, address: $address, client: $client, description: $description, bookedItems: $bookedItems, additionalCharges: $additionalCharges, paymentHistory: $paymentHistory, securityTransactionHistory: $securityTransactionHistory, securityTransactionSummary: $securityTransactionSummary, refundHistory: $refundHistory, securityPayment: $securityPayment, pickupTime: $pickupTime, returnTime: $returnTime, refundTotal: $refundTotal, refundableBalance: $refundableBalance, documents: $documents, documentsDetails: $documentsDetails, rentalUnit: $rentalUnit, isSecurityPaid: $isSecurityPaid, balanceAmount: $balanceAmount, appliedTaxes: $appliedTaxes)';
}


}

/// @nodoc
abstract mixin class $BookingDetailsEntityCopyWith<$Res>  {
  factory $BookingDetailsEntityCopyWith(BookingDetailsEntity value, $Res Function(BookingDetailsEntity) _then) = _$BookingDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int id, String invoiceId, String createdAt, String bookedDate, String? bookingCompletedDate, String? pickupDate, String returnDate, String? coolingPeriodDate, int totalAmount, int totalAmountWithSecurity, int? discountAmount, int paidAmount, int paidAmountWithSecurity, int totalPayable, PurchaseMode purchaseMode, BookingStatus bookingStatus, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? staffName, int? staffId, BookingOtherDetailsEntity otherDetails, String? address, ClientEntity client, String? description, List<ProductInfoEntity> bookedItems, List<AdditionalChargesEntity> additionalCharges, List<BookingPaymentHistoryEntity> paymentHistory, List<BookingSecurityRefundHistoryEntity> securityTransactionHistory, BookingSecuritySummaryEntity securityTransactionSummary, List<BookingRefundHistoryEntity> refundHistory, BookingSecurityPaymentEntity? securityPayment, String? pickupTime, String? returnTime, int refundTotal, int refundableBalance, List<String> documents, DocumentDetailsEntity? documentsDetails, BookingRentalUnit rentalUnit, bool isSecurityPaid, int balanceAmount, List<AppliedTaxEntity> appliedTaxes
});


$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails;$ClientEntityCopyWith<$Res> get client;$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary;$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment;$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails;

}
/// @nodoc
class _$BookingDetailsEntityCopyWithImpl<$Res>
    implements $BookingDetailsEntityCopyWith<$Res> {
  _$BookingDetailsEntityCopyWithImpl(this._self, this._then);

  final BookingDetailsEntity _self;
  final $Res Function(BookingDetailsEntity) _then;

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceId = null,Object? createdAt = null,Object? bookedDate = null,Object? bookingCompletedDate = freezed,Object? pickupDate = freezed,Object? returnDate = null,Object? coolingPeriodDate = freezed,Object? totalAmount = null,Object? totalAmountWithSecurity = null,Object? discountAmount = freezed,Object? paidAmount = null,Object? paidAmountWithSecurity = null,Object? totalPayable = null,Object? purchaseMode = null,Object? bookingStatus = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? staffName = freezed,Object? staffId = freezed,Object? otherDetails = null,Object? address = freezed,Object? client = null,Object? description = freezed,Object? bookedItems = null,Object? additionalCharges = null,Object? paymentHistory = null,Object? securityTransactionHistory = null,Object? securityTransactionSummary = null,Object? refundHistory = null,Object? securityPayment = freezed,Object? pickupTime = freezed,Object? returnTime = freezed,Object? refundTotal = null,Object? refundableBalance = null,Object? documents = null,Object? documentsDetails = freezed,Object? rentalUnit = null,Object? isSecurityPaid = null,Object? balanceAmount = null,Object? appliedTaxes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,bookedDate: null == bookedDate ? _self.bookedDate : bookedDate // ignore: cast_nullable_to_non_nullable
as String,bookingCompletedDate: freezed == bookingCompletedDate ? _self.bookingCompletedDate : bookingCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,pickupDate: freezed == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,coolingPeriodDate: freezed == coolingPeriodDate ? _self.coolingPeriodDate : coolingPeriodDate // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,totalAmountWithSecurity: null == totalAmountWithSecurity ? _self.totalAmountWithSecurity : totalAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmountWithSecurity: null == paidAmountWithSecurity ? _self.paidAmountWithSecurity : paidAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,totalPayable: null == totalPayable ? _self.totalPayable : totalPayable // ignore: cast_nullable_to_non_nullable
as int,purchaseMode: null == purchaseMode ? _self.purchaseMode : purchaseMode // ignore: cast_nullable_to_non_nullable
as PurchaseMode,bookingStatus: null == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as BookingStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,otherDetails: null == otherDetails ? _self.otherDetails : otherDetails // ignore: cast_nullable_to_non_nullable
as BookingOtherDetailsEntity,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bookedItems: null == bookedItems ? _self.bookedItems : bookedItems // ignore: cast_nullable_to_non_nullable
as List<ProductInfoEntity>,additionalCharges: null == additionalCharges ? _self.additionalCharges : additionalCharges // ignore: cast_nullable_to_non_nullable
as List<AdditionalChargesEntity>,paymentHistory: null == paymentHistory ? _self.paymentHistory : paymentHistory // ignore: cast_nullable_to_non_nullable
as List<BookingPaymentHistoryEntity>,securityTransactionHistory: null == securityTransactionHistory ? _self.securityTransactionHistory : securityTransactionHistory // ignore: cast_nullable_to_non_nullable
as List<BookingSecurityRefundHistoryEntity>,securityTransactionSummary: null == securityTransactionSummary ? _self.securityTransactionSummary : securityTransactionSummary // ignore: cast_nullable_to_non_nullable
as BookingSecuritySummaryEntity,refundHistory: null == refundHistory ? _self.refundHistory : refundHistory // ignore: cast_nullable_to_non_nullable
as List<BookingRefundHistoryEntity>,securityPayment: freezed == securityPayment ? _self.securityPayment : securityPayment // ignore: cast_nullable_to_non_nullable
as BookingSecurityPaymentEntity?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as String?,returnTime: freezed == returnTime ? _self.returnTime : returnTime // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: null == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as int,refundableBalance: null == refundableBalance ? _self.refundableBalance : refundableBalance // ignore: cast_nullable_to_non_nullable
as int,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,documentsDetails: freezed == documentsDetails ? _self.documentsDetails : documentsDetails // ignore: cast_nullable_to_non_nullable
as DocumentDetailsEntity?,rentalUnit: null == rentalUnit ? _self.rentalUnit : rentalUnit // ignore: cast_nullable_to_non_nullable
as BookingRentalUnit,isSecurityPaid: null == isSecurityPaid ? _self.isSecurityPaid : isSecurityPaid // ignore: cast_nullable_to_non_nullable
as bool,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,appliedTaxes: null == appliedTaxes ? _self.appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}
/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails {
  
  return $BookingOtherDetailsEntityCopyWith<$Res>(_self.otherDetails, (value) {
    return _then(_self.copyWith(otherDetails: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res> get client {
  
  return $ClientEntityCopyWith<$Res>(_self.client, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary {
  
  return $BookingSecuritySummaryEntityCopyWith<$Res>(_self.securityTransactionSummary, (value) {
    return _then(_self.copyWith(securityTransactionSummary: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment {
    if (_self.securityPayment == null) {
    return null;
  }

  return $BookingSecurityPaymentEntityCopyWith<$Res>(_self.securityPayment!, (value) {
    return _then(_self.copyWith(securityPayment: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails {
    if (_self.documentsDetails == null) {
    return null;
  }

  return $DocumentDetailsEntityCopyWith<$Res>(_self.documentsDetails!, (value) {
    return _then(_self.copyWith(documentsDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDetailsEntity].
extension BookingDetailsEntityPatterns on BookingDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)  $default,) {final _that = this;
switch (_that) {
case _BookingDetailsEntity():
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String invoiceId,  String createdAt,  String bookedDate,  String? bookingCompletedDate,  String? pickupDate,  String returnDate,  String? coolingPeriodDate,  int totalAmount,  int totalAmountWithSecurity,  int? discountAmount,  int paidAmount,  int paidAmountWithSecurity,  int totalPayable,  PurchaseMode purchaseMode,  BookingStatus bookingStatus,  PaymentStatus paymentStatus,  DeliveryStatus deliveryStatus,  String? staffName,  int? staffId,  BookingOtherDetailsEntity otherDetails,  String? address,  ClientEntity client,  String? description,  List<ProductInfoEntity> bookedItems,  List<AdditionalChargesEntity> additionalCharges,  List<BookingPaymentHistoryEntity> paymentHistory,  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory,  BookingSecuritySummaryEntity securityTransactionSummary,  List<BookingRefundHistoryEntity> refundHistory,  BookingSecurityPaymentEntity? securityPayment,  String? pickupTime,  String? returnTime,  int refundTotal,  int refundableBalance,  List<String> documents,  DocumentDetailsEntity? documentsDetails,  BookingRentalUnit rentalUnit,  bool isSecurityPaid,  int balanceAmount,  List<AppliedTaxEntity> appliedTaxes)?  $default,) {final _that = this;
switch (_that) {
case _BookingDetailsEntity() when $default != null:
return $default(_that.id,_that.invoiceId,_that.createdAt,_that.bookedDate,_that.bookingCompletedDate,_that.pickupDate,_that.returnDate,_that.coolingPeriodDate,_that.totalAmount,_that.totalAmountWithSecurity,_that.discountAmount,_that.paidAmount,_that.paidAmountWithSecurity,_that.totalPayable,_that.purchaseMode,_that.bookingStatus,_that.paymentStatus,_that.deliveryStatus,_that.staffName,_that.staffId,_that.otherDetails,_that.address,_that.client,_that.description,_that.bookedItems,_that.additionalCharges,_that.paymentHistory,_that.securityTransactionHistory,_that.securityTransactionSummary,_that.refundHistory,_that.securityPayment,_that.pickupTime,_that.returnTime,_that.refundTotal,_that.refundableBalance,_that.documents,_that.documentsDetails,_that.rentalUnit,_that.isSecurityPaid,_that.balanceAmount,_that.appliedTaxes);case _:
  return null;

}
}

}

/// @nodoc


class _BookingDetailsEntity implements BookingDetailsEntity {
  const _BookingDetailsEntity({required this.id, required this.invoiceId, required this.createdAt, required this.bookedDate, this.bookingCompletedDate, required this.pickupDate, required this.returnDate, this.coolingPeriodDate, required this.totalAmount, required this.totalAmountWithSecurity, this.discountAmount, required this.paidAmount, required this.paidAmountWithSecurity, required this.totalPayable, required this.purchaseMode, required this.bookingStatus, required this.paymentStatus, required this.deliveryStatus, this.staffName, this.staffId, required this.otherDetails, this.address, required this.client, this.description, required final  List<ProductInfoEntity> bookedItems, final  List<AdditionalChargesEntity> additionalCharges = const [], final  List<BookingPaymentHistoryEntity> paymentHistory = const [], final  List<BookingSecurityRefundHistoryEntity> securityTransactionHistory = const [], required this.securityTransactionSummary, final  List<BookingRefundHistoryEntity> refundHistory = const [], this.securityPayment, required this.pickupTime, required this.returnTime, required this.refundTotal, required this.refundableBalance, final  List<String> documents = const [], this.documentsDetails, required this.rentalUnit, this.isSecurityPaid = false, required this.balanceAmount, final  List<AppliedTaxEntity> appliedTaxes = const []}): _bookedItems = bookedItems,_additionalCharges = additionalCharges,_paymentHistory = paymentHistory,_securityTransactionHistory = securityTransactionHistory,_refundHistory = refundHistory,_documents = documents,_appliedTaxes = appliedTaxes;
  

@override final  int id;
@override final  String invoiceId;
@override final  String createdAt;
@override final  String bookedDate;
@override final  String? bookingCompletedDate;
@override final  String? pickupDate;
@override final  String returnDate;
@override final  String? coolingPeriodDate;
@override final  int totalAmount;
@override final  int totalAmountWithSecurity;
@override final  int? discountAmount;
@override final  int paidAmount;
@override final  int paidAmountWithSecurity;
@override final  int totalPayable;
@override final  PurchaseMode purchaseMode;
@override final  BookingStatus bookingStatus;
@override final  PaymentStatus paymentStatus;
@override final  DeliveryStatus deliveryStatus;
@override final  String? staffName;
@override final  int? staffId;
@override final  BookingOtherDetailsEntity otherDetails;
@override final  String? address;
@override final  ClientEntity client;
@override final  String? description;
 final  List<ProductInfoEntity> _bookedItems;
@override List<ProductInfoEntity> get bookedItems {
  if (_bookedItems is EqualUnmodifiableListView) return _bookedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookedItems);
}

 final  List<AdditionalChargesEntity> _additionalCharges;
@override@JsonKey() List<AdditionalChargesEntity> get additionalCharges {
  if (_additionalCharges is EqualUnmodifiableListView) return _additionalCharges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalCharges);
}

 final  List<BookingPaymentHistoryEntity> _paymentHistory;
@override@JsonKey() List<BookingPaymentHistoryEntity> get paymentHistory {
  if (_paymentHistory is EqualUnmodifiableListView) return _paymentHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentHistory);
}

 final  List<BookingSecurityRefundHistoryEntity> _securityTransactionHistory;
@override@JsonKey() List<BookingSecurityRefundHistoryEntity> get securityTransactionHistory {
  if (_securityTransactionHistory is EqualUnmodifiableListView) return _securityTransactionHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_securityTransactionHistory);
}

@override final  BookingSecuritySummaryEntity securityTransactionSummary;
 final  List<BookingRefundHistoryEntity> _refundHistory;
@override@JsonKey() List<BookingRefundHistoryEntity> get refundHistory {
  if (_refundHistory is EqualUnmodifiableListView) return _refundHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_refundHistory);
}

@override final  BookingSecurityPaymentEntity? securityPayment;
@override final  String? pickupTime;
@override final  String? returnTime;
@override final  int refundTotal;
@override final  int refundableBalance;
 final  List<String> _documents;
@override@JsonKey() List<String> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

@override final  DocumentDetailsEntity? documentsDetails;
@override final  BookingRentalUnit rentalUnit;
@override@JsonKey() final  bool isSecurityPaid;
@override final  int balanceAmount;
 final  List<AppliedTaxEntity> _appliedTaxes;
@override@JsonKey() List<AppliedTaxEntity> get appliedTaxes {
  if (_appliedTaxes is EqualUnmodifiableListView) return _appliedTaxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appliedTaxes);
}


/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDetailsEntityCopyWith<_BookingDetailsEntity> get copyWith => __$BookingDetailsEntityCopyWithImpl<_BookingDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDetailsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bookedDate, bookedDate) || other.bookedDate == bookedDate)&&(identical(other.bookingCompletedDate, bookingCompletedDate) || other.bookingCompletedDate == bookingCompletedDate)&&(identical(other.pickupDate, pickupDate) || other.pickupDate == pickupDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.coolingPeriodDate, coolingPeriodDate) || other.coolingPeriodDate == coolingPeriodDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.totalAmountWithSecurity, totalAmountWithSecurity) || other.totalAmountWithSecurity == totalAmountWithSecurity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.paidAmountWithSecurity, paidAmountWithSecurity) || other.paidAmountWithSecurity == paidAmountWithSecurity)&&(identical(other.totalPayable, totalPayable) || other.totalPayable == totalPayable)&&(identical(other.purchaseMode, purchaseMode) || other.purchaseMode == purchaseMode)&&(identical(other.bookingStatus, bookingStatus) || other.bookingStatus == bookingStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.staffName, staffName) || other.staffName == staffName)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.otherDetails, otherDetails) || other.otherDetails == otherDetails)&&(identical(other.address, address) || other.address == address)&&(identical(other.client, client) || other.client == client)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._bookedItems, _bookedItems)&&const DeepCollectionEquality().equals(other._additionalCharges, _additionalCharges)&&const DeepCollectionEquality().equals(other._paymentHistory, _paymentHistory)&&const DeepCollectionEquality().equals(other._securityTransactionHistory, _securityTransactionHistory)&&(identical(other.securityTransactionSummary, securityTransactionSummary) || other.securityTransactionSummary == securityTransactionSummary)&&const DeepCollectionEquality().equals(other._refundHistory, _refundHistory)&&(identical(other.securityPayment, securityPayment) || other.securityPayment == securityPayment)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.returnTime, returnTime) || other.returnTime == returnTime)&&(identical(other.refundTotal, refundTotal) || other.refundTotal == refundTotal)&&(identical(other.refundableBalance, refundableBalance) || other.refundableBalance == refundableBalance)&&const DeepCollectionEquality().equals(other._documents, _documents)&&(identical(other.documentsDetails, documentsDetails) || other.documentsDetails == documentsDetails)&&(identical(other.rentalUnit, rentalUnit) || other.rentalUnit == rentalUnit)&&(identical(other.isSecurityPaid, isSecurityPaid) || other.isSecurityPaid == isSecurityPaid)&&(identical(other.balanceAmount, balanceAmount) || other.balanceAmount == balanceAmount)&&const DeepCollectionEquality().equals(other._appliedTaxes, _appliedTaxes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,invoiceId,createdAt,bookedDate,bookingCompletedDate,pickupDate,returnDate,coolingPeriodDate,totalAmount,totalAmountWithSecurity,discountAmount,paidAmount,paidAmountWithSecurity,totalPayable,purchaseMode,bookingStatus,paymentStatus,deliveryStatus,staffName,staffId,otherDetails,address,client,description,const DeepCollectionEquality().hash(_bookedItems),const DeepCollectionEquality().hash(_additionalCharges),const DeepCollectionEquality().hash(_paymentHistory),const DeepCollectionEquality().hash(_securityTransactionHistory),securityTransactionSummary,const DeepCollectionEquality().hash(_refundHistory),securityPayment,pickupTime,returnTime,refundTotal,refundableBalance,const DeepCollectionEquality().hash(_documents),documentsDetails,rentalUnit,isSecurityPaid,balanceAmount,const DeepCollectionEquality().hash(_appliedTaxes)]);

@override
String toString() {
  return 'BookingDetailsEntity(id: $id, invoiceId: $invoiceId, createdAt: $createdAt, bookedDate: $bookedDate, bookingCompletedDate: $bookingCompletedDate, pickupDate: $pickupDate, returnDate: $returnDate, coolingPeriodDate: $coolingPeriodDate, totalAmount: $totalAmount, totalAmountWithSecurity: $totalAmountWithSecurity, discountAmount: $discountAmount, paidAmount: $paidAmount, paidAmountWithSecurity: $paidAmountWithSecurity, totalPayable: $totalPayable, purchaseMode: $purchaseMode, bookingStatus: $bookingStatus, paymentStatus: $paymentStatus, deliveryStatus: $deliveryStatus, staffName: $staffName, staffId: $staffId, otherDetails: $otherDetails, address: $address, client: $client, description: $description, bookedItems: $bookedItems, additionalCharges: $additionalCharges, paymentHistory: $paymentHistory, securityTransactionHistory: $securityTransactionHistory, securityTransactionSummary: $securityTransactionSummary, refundHistory: $refundHistory, securityPayment: $securityPayment, pickupTime: $pickupTime, returnTime: $returnTime, refundTotal: $refundTotal, refundableBalance: $refundableBalance, documents: $documents, documentsDetails: $documentsDetails, rentalUnit: $rentalUnit, isSecurityPaid: $isSecurityPaid, balanceAmount: $balanceAmount, appliedTaxes: $appliedTaxes)';
}


}

/// @nodoc
abstract mixin class _$BookingDetailsEntityCopyWith<$Res> implements $BookingDetailsEntityCopyWith<$Res> {
  factory _$BookingDetailsEntityCopyWith(_BookingDetailsEntity value, $Res Function(_BookingDetailsEntity) _then) = __$BookingDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String invoiceId, String createdAt, String bookedDate, String? bookingCompletedDate, String? pickupDate, String returnDate, String? coolingPeriodDate, int totalAmount, int totalAmountWithSecurity, int? discountAmount, int paidAmount, int paidAmountWithSecurity, int totalPayable, PurchaseMode purchaseMode, BookingStatus bookingStatus, PaymentStatus paymentStatus, DeliveryStatus deliveryStatus, String? staffName, int? staffId, BookingOtherDetailsEntity otherDetails, String? address, ClientEntity client, String? description, List<ProductInfoEntity> bookedItems, List<AdditionalChargesEntity> additionalCharges, List<BookingPaymentHistoryEntity> paymentHistory, List<BookingSecurityRefundHistoryEntity> securityTransactionHistory, BookingSecuritySummaryEntity securityTransactionSummary, List<BookingRefundHistoryEntity> refundHistory, BookingSecurityPaymentEntity? securityPayment, String? pickupTime, String? returnTime, int refundTotal, int refundableBalance, List<String> documents, DocumentDetailsEntity? documentsDetails, BookingRentalUnit rentalUnit, bool isSecurityPaid, int balanceAmount, List<AppliedTaxEntity> appliedTaxes
});


@override $BookingOtherDetailsEntityCopyWith<$Res> get otherDetails;@override $ClientEntityCopyWith<$Res> get client;@override $BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary;@override $BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment;@override $DocumentDetailsEntityCopyWith<$Res>? get documentsDetails;

}
/// @nodoc
class __$BookingDetailsEntityCopyWithImpl<$Res>
    implements _$BookingDetailsEntityCopyWith<$Res> {
  __$BookingDetailsEntityCopyWithImpl(this._self, this._then);

  final _BookingDetailsEntity _self;
  final $Res Function(_BookingDetailsEntity) _then;

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceId = null,Object? createdAt = null,Object? bookedDate = null,Object? bookingCompletedDate = freezed,Object? pickupDate = freezed,Object? returnDate = null,Object? coolingPeriodDate = freezed,Object? totalAmount = null,Object? totalAmountWithSecurity = null,Object? discountAmount = freezed,Object? paidAmount = null,Object? paidAmountWithSecurity = null,Object? totalPayable = null,Object? purchaseMode = null,Object? bookingStatus = null,Object? paymentStatus = null,Object? deliveryStatus = null,Object? staffName = freezed,Object? staffId = freezed,Object? otherDetails = null,Object? address = freezed,Object? client = null,Object? description = freezed,Object? bookedItems = null,Object? additionalCharges = null,Object? paymentHistory = null,Object? securityTransactionHistory = null,Object? securityTransactionSummary = null,Object? refundHistory = null,Object? securityPayment = freezed,Object? pickupTime = freezed,Object? returnTime = freezed,Object? refundTotal = null,Object? refundableBalance = null,Object? documents = null,Object? documentsDetails = freezed,Object? rentalUnit = null,Object? isSecurityPaid = null,Object? balanceAmount = null,Object? appliedTaxes = null,}) {
  return _then(_BookingDetailsEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,bookedDate: null == bookedDate ? _self.bookedDate : bookedDate // ignore: cast_nullable_to_non_nullable
as String,bookingCompletedDate: freezed == bookingCompletedDate ? _self.bookingCompletedDate : bookingCompletedDate // ignore: cast_nullable_to_non_nullable
as String?,pickupDate: freezed == pickupDate ? _self.pickupDate : pickupDate // ignore: cast_nullable_to_non_nullable
as String?,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as String,coolingPeriodDate: freezed == coolingPeriodDate ? _self.coolingPeriodDate : coolingPeriodDate // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as int,totalAmountWithSecurity: null == totalAmountWithSecurity ? _self.totalAmountWithSecurity : totalAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,paidAmountWithSecurity: null == paidAmountWithSecurity ? _self.paidAmountWithSecurity : paidAmountWithSecurity // ignore: cast_nullable_to_non_nullable
as int,totalPayable: null == totalPayable ? _self.totalPayable : totalPayable // ignore: cast_nullable_to_non_nullable
as int,purchaseMode: null == purchaseMode ? _self.purchaseMode : purchaseMode // ignore: cast_nullable_to_non_nullable
as PurchaseMode,bookingStatus: null == bookingStatus ? _self.bookingStatus : bookingStatus // ignore: cast_nullable_to_non_nullable
as BookingStatus,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as PaymentStatus,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,staffName: freezed == staffName ? _self.staffName : staffName // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as int?,otherDetails: null == otherDetails ? _self.otherDetails : otherDetails // ignore: cast_nullable_to_non_nullable
as BookingOtherDetailsEntity,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,client: null == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as ClientEntity,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bookedItems: null == bookedItems ? _self._bookedItems : bookedItems // ignore: cast_nullable_to_non_nullable
as List<ProductInfoEntity>,additionalCharges: null == additionalCharges ? _self._additionalCharges : additionalCharges // ignore: cast_nullable_to_non_nullable
as List<AdditionalChargesEntity>,paymentHistory: null == paymentHistory ? _self._paymentHistory : paymentHistory // ignore: cast_nullable_to_non_nullable
as List<BookingPaymentHistoryEntity>,securityTransactionHistory: null == securityTransactionHistory ? _self._securityTransactionHistory : securityTransactionHistory // ignore: cast_nullable_to_non_nullable
as List<BookingSecurityRefundHistoryEntity>,securityTransactionSummary: null == securityTransactionSummary ? _self.securityTransactionSummary : securityTransactionSummary // ignore: cast_nullable_to_non_nullable
as BookingSecuritySummaryEntity,refundHistory: null == refundHistory ? _self._refundHistory : refundHistory // ignore: cast_nullable_to_non_nullable
as List<BookingRefundHistoryEntity>,securityPayment: freezed == securityPayment ? _self.securityPayment : securityPayment // ignore: cast_nullable_to_non_nullable
as BookingSecurityPaymentEntity?,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as String?,returnTime: freezed == returnTime ? _self.returnTime : returnTime // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: null == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as int,refundableBalance: null == refundableBalance ? _self.refundableBalance : refundableBalance // ignore: cast_nullable_to_non_nullable
as int,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<String>,documentsDetails: freezed == documentsDetails ? _self.documentsDetails : documentsDetails // ignore: cast_nullable_to_non_nullable
as DocumentDetailsEntity?,rentalUnit: null == rentalUnit ? _self.rentalUnit : rentalUnit // ignore: cast_nullable_to_non_nullable
as BookingRentalUnit,isSecurityPaid: null == isSecurityPaid ? _self.isSecurityPaid : isSecurityPaid // ignore: cast_nullable_to_non_nullable
as bool,balanceAmount: null == balanceAmount ? _self.balanceAmount : balanceAmount // ignore: cast_nullable_to_non_nullable
as int,appliedTaxes: null == appliedTaxes ? _self._appliedTaxes : appliedTaxes // ignore: cast_nullable_to_non_nullable
as List<AppliedTaxEntity>,
  ));
}

/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingOtherDetailsEntityCopyWith<$Res> get otherDetails {
  
  return $BookingOtherDetailsEntityCopyWith<$Res>(_self.otherDetails, (value) {
    return _then(_self.copyWith(otherDetails: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res> get client {
  
  return $ClientEntityCopyWith<$Res>(_self.client, (value) {
    return _then(_self.copyWith(client: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecuritySummaryEntityCopyWith<$Res> get securityTransactionSummary {
  
  return $BookingSecuritySummaryEntityCopyWith<$Res>(_self.securityTransactionSummary, (value) {
    return _then(_self.copyWith(securityTransactionSummary: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingSecurityPaymentEntityCopyWith<$Res>? get securityPayment {
    if (_self.securityPayment == null) {
    return null;
  }

  return $BookingSecurityPaymentEntityCopyWith<$Res>(_self.securityPayment!, (value) {
    return _then(_self.copyWith(securityPayment: value));
  });
}/// Create a copy of BookingDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentDetailsEntityCopyWith<$Res>? get documentsDetails {
    if (_self.documentsDetails == null) {
    return null;
  }

  return $DocumentDetailsEntityCopyWith<$Res>(_self.documentsDetails!, (value) {
    return _then(_self.copyWith(documentsDetails: value));
  });
}
}

// dart format on
