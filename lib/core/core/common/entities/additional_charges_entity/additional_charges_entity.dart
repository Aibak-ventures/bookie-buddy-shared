import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_charges_entity.freezed.dart';

@freezed
abstract class AdditionalChargesEntity with _$AdditionalChargesEntity {
  const factory AdditionalChargesEntity({
    int? id,
    String? name,
    int? amount,

    /// The account this charge was paid from/into, when a caller asks for one
    /// (see `AddAdditionalChargesWidget.askForAccount` in the mobile app).
    /// `null` everywhere a charge isn't attributed to a specific account.
    int? accountId,
    String? accountName,
  }) = _AdditionalChargesEntity;
}

extension AdditionalChargesListX on List<AdditionalChargesEntity> {
  int get totalAdditionalCharge => fold(0, (sum, c) => sum + (c.amount ?? 0));
}
