import 'package:bookie_buddy_shared/bookie_buddy_shared.dart';

// Trimmed from the mobile app's utils/helpers/product_field_helper.dart —
// that class also has ProductEntity-dependent methods
// (getProductSpecification, getSecondaryAttributeDisplayText,
// buildProductDetailsRows) used by product-form UI, unrelated to receipts.
// This package only needs getSubtitleLines, so that's the only method
// ported. See docs/PENDING.md in this repo.

/// Helper for product-related field logic and display formatting, scoped to
/// what the receipt-rendering pipeline needs.
class ProductFieldHelper {
  const ProductFieldHelper._();

  /// Ordered "Label: value" subtitle lines actually relevant for
  /// [serviceType] — the single source of truth for "what's worth showing
  /// for this product type" that a booking's product list tile and the
  /// printed receipt both need. Kept here rather than duplicated per call
  /// site so the two can't quietly drift out of sync on which fields
  /// matter for which service type.
  ///
  /// - [includeQuantity]: pass `false` when the caller already shows
  ///   quantity/length in its own dedicated column (e.g. a receipt's item
  ///   table) and would otherwise duplicate it here too.
  /// - [includeLabels]: `true` (default) returns `"Label: value"`;
  ///   `false` returns just the bare value — for a tight space like a
  ///   receipt line where "Size: M · Color: Red" reads as noisier than
  ///   "M · Red" once the values alone are self-explanatory in context.
  static List<String> getSubtitleLines({
    required MainServiceType? serviceType,
    String? type,
    String? variantAttribute,
    String? color,
    String? category,
    String? model,
    String? registrationNumber,
    required int quantity,
    double fabricLength = 0,
    bool needColor = true,
    bool showVariantWithType = false,
    bool includeQuantity = true,
    bool includeLabels = true,
    bool needFallbacks = true,
  }) {
    final effectiveType = serviceType ?? MainServiceType.other;

    // `null` means "omit this row entirely" — decided here, on whether
    // there's an actual value, not on whether the *formatted* string
    // happens to be non-empty. Deciding it after formatting was the bug:
    // an empty value with [includeLabels] on still formats to a non-empty
    // string like "Reg. No: " (label + colon + nothing), which would
    // survive a later `.isNotEmpty` check despite having no real value.
    String? line(String label, String? value, {bool fallback = true}) {
      if (value.isNullOrEmpty) {
        if (!needFallbacks || !fallback) return null;
        value = '-';
      }
      return includeLabels ? '$label: $value' : value;
    }

    String? variantRow() {
      if (!effectiveType.isMultiVariantProductType) return null;
      if (type != null) return line('Type', type);
      if (variantAttribute.isNullOrEmpty) {
        if (!needFallbacks) return null;
        // No label at all when there's nothing to label, same as
        // getVariantDisplayText — "Size: -" reads worse than a bare "-".
        return '-';
      }
      return line(effectiveType.variantAttributeLabel, variantAttribute);
    }

    String? colorRow() {
      if (!needColor) return null;
      if (!effectiveType.showsColorField) return null;
      return line(effectiveType.colorFieldLabel, color);
    }

    String? modelRow() {
      if (!effectiveType.isVehicle) return null;
      return line(effectiveType.modelFieldLabel, model);
    }

    String? regNoRow() {
      if (!effectiveType.isVehicle) return null;
      return line('Reg. No', registrationNumber, fallback: false);
    }

    String? categoryRow() {
      if (effectiveType.isVehicle) return null;
      if (!effectiveType.isSingleVariantProductType &&
          !effectiveType.isGadget) {
        return null;
      }
      return line(effectiveType.categoryFieldLabel, category);
    }

    String? sizeRow() {
      if (!showVariantWithType) return null;
      if (variantAttribute == null) return null;
      return line('Size', variantAttribute);
    }

    String? quantityRow() {
      if (!includeQuantity) return null;
      if (!effectiveType.showProductQuantityField) return null;
      return effectiveType.isProductWithLengthMeasurement
          ? line('Length', '$fabricLength', fallback: false)
          : line('Quantity', '$quantity', fallback: false);
    }

    final rows = switch (effectiveType) {
      MainServiceType.vehicle => [modelRow(), regNoRow(), quantityRow()],
      MainServiceType.room => [colorRow(), categoryRow()],
      MainServiceType.gadget => [variantRow(), categoryRow(), quantityRow()],
      MainServiceType.jewellery => [colorRow(), categoryRow(), quantityRow()],
      MainServiceType.material => [categoryRow(), quantityRow()],
      MainServiceType.equipment => [categoryRow(), quantityRow()],
      _ => [variantRow(), sizeRow(), colorRow(), categoryRow(), quantityRow()],
    };

    return rows.nonNulls.toList();
  }
}
