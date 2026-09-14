import 'package:bookie_buddy_shared/core/core/constants/enums/tax_calculation_type_enum.dart';

/// Shared display label for a tax line, e.g. `GST (18%)` or, for an
/// inclusive rule, `GST (18%) (incl.)`. Used anywhere a tax rule or applied
/// tax snapshot needs to be shown next to its amount — add booking, edit
/// booking, booking details, and any future sales/custom work screens.
String formatTaxLabel({
  required String taxName,
  required double taxRate,
  required TaxCalculationType taxCalculationType,
}) {
  final rateLabel = taxRate.truncateToDouble() == taxRate
      ? taxRate.toStringAsFixed(0)
      : taxRate.toStringAsFixed(2);
  final suffix = taxCalculationType == TaxCalculationType.inclusive
      ? ' (incl.)'
      : '';
  return '$taxName ($rateLabel%)$suffix';
}

/// Label for a flat GST line whose rate the user typed in rather than the shop
/// holding a tax rule for it — the purchase form's case. A blank field reads
/// as 0%.
String formatFlatGstLabel(
  double? taxRate, {
  TaxCalculationType taxCalculationType = TaxCalculationType.inclusive,
}) => formatTaxLabel(
  taxName: 'GST',
  taxRate: taxRate ?? 0,
  taxCalculationType: taxCalculationType,
);
