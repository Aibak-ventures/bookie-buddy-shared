import 'package:bookie_buddy_shared/core/core/constants/enums/tax_calculation_type_enum.dart';
import 'package:bookie_buddy_shared/core/core/constants/enums/taxable_component_enum.dart';

/// Shared math behind every "apply a tax rule to some amounts" calculation
/// in the app — used by both [TaxConfigurationEntity] (the shop's live rule)
/// and [AppliedTaxEntity] (a frozen snapshot of a rule applied to a past
/// booking/sale/custom work). Kept as plain functions, not tied to either
/// entity, so both can share one implementation of the rate math.

/// Sums only the components a rule applies to, out of whatever amounts the
/// caller has available, minus [discountAmount].
///
/// [discountAmount] is only taken off whichever of [_discountableComponents]
/// are present in [taxableComponents] — and is capped at that discountable portion so the result never
/// goes negative.
double calculateTaxableAmount({
  required List<TaxableComponent> taxableComponents,
  required Map<TaxableComponent, double> componentAmounts,
  double discountAmount = 0,
}) {
  final rawBase = taxableComponents.fold(
    0.0,
    (sum, component) => sum + (componentAmounts[component] ?? 0),
  );

  return rawBase - discountAmount;
}

/// The tax amount for [componentAmounts] under the given rate/type/components,
/// after subtracting [discountAmount] from the taxable base.
double calculateTaxAmount({
  required double taxRate,
  required TaxCalculationType taxCalculationType,
  required List<TaxableComponent> taxableComponents,
  required Map<TaxableComponent, double> componentAmounts,
  double discountAmount = 0,
}) {
  if (taxRate <= 0) return 0;
  final base = calculateTaxableAmount(
    taxableComponents: taxableComponents,
    componentAmounts: componentAmounts,
    discountAmount: discountAmount,
  );
  return switch (taxCalculationType) {
    // Rate is added on top of the taxable base.
    TaxCalculationType.exclusive => base * taxRate / 100,
    // Rate is already baked into the taxable base; back it out.
    TaxCalculationType.inclusive => base - (base * 100 / (100 + taxRate)),
  };
}

/// The tax on a single flat [amount] at [taxRate], rounded to whole rupees.
///
/// [calculateTaxAmount] above is the general form — it splits an amount into
/// taxable components and takes a discount off the base. This is the one-amount
/// case: a screen where the user types a single rate rather than the shop
/// holding a rule for it, as the purchase form does. [taxRate] is nullable
/// because such a field can simply be left blank.
int calculateFlatTaxAmount({
  required int amount,
  required double? taxRate,
  required TaxCalculationType taxCalculationType,
}) {
  if (taxRate == null || taxRate <= 0 || amount <= 0) return 0;
  return calculateTaxAmount(
    taxRate: taxRate,
    taxCalculationType: taxCalculationType,
    taxableComponents: const [TaxableComponent.productTotal],
    componentAmounts: {TaxableComponent.productTotal: amount.toDouble()},
  ).round();
}
