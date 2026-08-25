# Pending — thermal-printer extraction (in progress)

First extraction into these packages: the receipt-rendering pipeline from
mobile's `thermal_printer` feature, chosen because it was already
file-for-file duplicated (in places byte-identical) between mobile and web.
Full rationale in the mobile repo's `docs/shared-packages-plan.md`.

Status: **copied for review, not yet wired into either app.** Nothing in
either `booking_application` or `bookie_buddy_web` points at these packages
yet — that's a deliberate separate step after this is examined.

## Analyzing clean today

**`packages/core`** — fully clean (`dart analyze`: no issues):
- `features/thermal_printer/domain/entities/print_ticket_entity/`
- `features/thermal_printer/domain/print_ticket_builder.dart`
- `core/common/entities/{applied_tax_entity,user_shop_entity,tax_summary_entity,tax_configuration_entity}/`
- `core/common/utils/{tax_calculator,tax_label_formatter}.dart`
- `core/constants/enums/{tax_calculation_type_enum,taxable_component_enum,shop_based_enums}.dart`

**`packages/ui`** — clean (`flutter analyze`: 1 pre-existing style lint,
`avoid_single_cascade_in_expression_statements` in `offscreen_render.dart`,
copied as-is from mobile):
- `features/thermal_printer/presentation/receipt_design/shared/{receipt_canvas,monochrome,offscreen_render}.dart`

These four are exported from `bookie_buddy_ui.dart`'s public API already.

## Copied but not analyzing clean — needs reconciliation before use

Still in `packages/ui`, still importing `package:booking_application/...`
directly (marked `// PENDING` inline at each import) — **not** exported from
`bookie_buddy_ui.dart` yet:

| File | Blocked on |
|---|---|
| `receipt_design/shared/receipt_date_formatter.dart` | `utils/extensions/string_extensions.dart` (`parseToDateTime`, `formatToUiTime`) |
| `receipt_design/shared/receipt_shared_sections.dart` | `utils/extensions/number_extensions.dart` (`toCurrency`); `core/constants/enums/main_service_type_enums.dart` (below) |
| `receipt_design/shared/shop_receipt_sections.dart` | `utils/extensions/string_extensions.dart` (`isNotNullOrEmpty`) |
| `core/constants/enums/main_service_type_enums.dart` | `core/constants/enums/enums.dart` (barrel); `features/service/domain/entities/service_entity/` (a whole other feature); `utils/extensions/number_extensions.dart` |
| `utils/helpers/product_field_helper.dart` | `features/product/domain/entities/product_entity/` (a whole other feature); `utils/extensions/string_extensions.dart` |
| `receipt_design/builders/booking_receipt_canvas_builder.dart` | `BookingDetailsEntity`, `ProductInfoEntity` — **known to have different fields between mobile and web**, see decision below; plus `booking_time_resolver.dart`, `list_extensions.dart`, and the above |
| `receipt_design/builders/sales_receipt_canvas_builder.dart` | `SaleDetailsEntity`, `ProductSaleInfoEntity` — same concern as booking; plus `string_extensions.dart`, `number_extensions.dart` |

**Why `number_extensions.dart`/`string_extensions.dart` are flagged as their
own problem, not just "the entity mismatch":** these are large, general-
purpose grab-bag files in the mobile app (phone number formatting, color
picker helpers, screen-size utils, `toCurrency()`, date parsing, ~10+
Flutter-ecosystem dependencies) — pulling either wholesale into a shared
package would drag in far more than these receipt files actually use.
Likely fix later: extract just the handful of members each receipt file
needs (`toCurrency`, `parseToDateTime`, `formatToUiTime`,
`isNotNullOrEmpty`) into a small, focused extension inside `bookie_buddy_core`
or `bookie_buddy_ui`, rather than importing the whole file.

## The `BookingDetailsEntity`/`SaleDetailsEntity` field-mismatch concern

Flagged during planning: mobile and web's booking/sale entities don't have
identical shapes today, so the two builders can't just start importing a
shared entity type unmodified even once one exists.

**Decision: deferred until after this extraction is reviewed and wired up
for the parts that already work.** Options to evaluate then, not now:
1. Extract `BookingDetailsEntity`/`SaleDetailsEntity` into `bookie_buddy_core`
   outright and reconcile the field differences as part of that (bigger,
   touches both apps' whole booking/sales domain).
2. Give the receipt builders their own narrow, print-specific input shape
   (e.g. `BookingReceiptData`) inside `bookie_buddy_ui` — each app maps its
   own `BookingDetailsEntity` down to it. Smaller, avoids ever needing the
   two full entities to match, only the fields a receipt actually prints.

Leaning toward (2) but not deciding until the rest of this extraction has
been examined.

## Known cross-app cleanup needed regardless

- Web's `receipt_shared_sections.dart` imports `service_type_enums.dart`,
  mobile's is `main_service_type_enums.dart` — same enum, different file
  name. Pick mobile's name (source of truth) when this is wired up.
