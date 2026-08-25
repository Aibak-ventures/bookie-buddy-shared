# Pending — thermal-printer extraction

First extraction into these packages: the receipt-rendering pipeline from
mobile's `thermal_printer` feature, chosen because it was already
file-for-file duplicated (in places byte-identical) between mobile and web.
Full rationale in the mobile repo's `docs/shared-packages-plan.md`.

## Status: booking + sales receipt builders now working end-to-end

Both `flutter analyze` (ui) and `dart analyze` (core) are clean (one
pre-existing style info left as-is, see below). **Still not wired into
either app** — that's the deliberate next step, not done here.

### What changed to get there

Went with the "full entity extraction" option from this file's earlier
draft (not the narrow-adapter alternative): `BookingDetailsEntity` and
`SaleDetailsEntity`, plus their whole transitive entity/enum graph, are now
in `bookie_buddy_core`. Traversal was BFS'd from the three entry-point
entities, restricted to `domain/entities`, `core/common/entities`,
`core/constants/enums`, `core/common/utils` — 33 files. (An unrestricted
traversal — following every import, including generic util files — blew up
to 1208 files, because a couple of utils import things like `app_router.dart`.
That's the concrete shape of the "narrow the util imports" problem flagged
below.)

Three files in that graph had a Flutter dependency and got split — pure
values/business logic into `core`, the Flutter-typed half into
`bookie_buddy_ui` as an extension (same pattern as planned earlier for
`DeliveryStatus.color`):

- `booking_status_enums.dart` — `DeliveryStatus`/`ProductDeliveryStatus`'s
  `color` fields → `ui`'s `theme/status_ui_extensions.dart`.
- `main_service_type_enums.dart` — `categoryFieldIcon`/`colorFieldIcon`/
  `modelFieldIcon` (IconData) → same file. `colorFieldType`/`modelFieldType`
  getters dropped entirely (return types from the mobile app's `enums.dart`
  barrel, not needed by anything extracted so far, not worth pulling in).
- `enums.dart` (barrel) — only `BookingRentalUnit` was actually needed;
  given its own file (`booking_rental_unit_enum.dart`) rather than copying
  the barrel (which also holds `ProductModelFieldType.keyboardType`, a
  `TextInputType` — the reason it couldn't be copied wholesale into `core`).

Large multi-purpose util files (`number_extensions.dart`,
`string_extensions.dart`, `list_extensions.dart`, `date_time_extensions.dart`)
were **not** copied wholesale — exactly the concern flagged in this file's
first draft. Only the specific members actually used were ported, verbatim,
into narrow files:
- `core/lib/utils/extensions/string_extensions.dart` — `isNullOrEmpty`,
  `isNotNullOrEmpty`, `capitalizeFirstLetter` (needed by entities
  themselves, e.g. `booking_other_details_entity.dart`, so these had to
  live in `core`, not `ui`).
- `ui/lib/utils/extensions/receipt_format_extensions.dart` — `toCurrency`,
  `sum`, `parseToDateTime`, `tryParseToDateTime`, `formatToUiTime`.
- `ui/lib/features/thermal_printer/presentation/receipt_design/shared/booking_time_resolver.dart`
  — ported from mobile's presentation-layer file of the same purpose
  (needs `TimeOfDay`, so lives in `ui`); its own two one-line `DateTime`/
  `TimeOfDay` helpers inlined privately rather than pulling in
  `date_time_extensions.dart` for them.
- `ui/lib/utils/helpers/product_field_helper.dart` — trimmed to just
  `getSubtitleLines` (the only method receipts call); the `ProductEntity`-
  dependent methods on the mobile original (`getProductSpecification`,
  `getSecondaryAttributeDisplayText`, `buildProductDetailsRows`) were
  dropped rather than pulling in `ProductEntity` for them.

Both `MainServiceType`/`DeliveryStatus`/etc. are needed as **field types**
on `BookingDetailsEntity`/`ProductInfoEntity`, which live in `core` — so
these enums had to be splittable to fully-pure or not-shared at all; there
was no version of "defer the split" that still let the builders compile.
That's the concrete reason this extraction settled the enum-splitting
question that earlier planning conversation had left open.

### Scope not touched (per the "focus on receipt feature" decision)

Only entities. **Not ported:** either app's data layer, repository
interfaces/implementations, usecases, or DI. `BookingDetailsEntity`/
`SaleDetailsEntity` in `core` today are read-only shapes for rendering a
receipt — nothing yet constructs, fetches, or persists them there. Wiring
mobile/web's actual booking and sales features onto shared entities (if
ever done) is separate, larger, later work.

### `BookingSecuritySummaryEntity` naming note

Lives inside `booking_payment_history_entity.dart`, not a separate file —
matches mobile's actual layout (found while tracing the closure), despite
the class name suggesting otherwise.

### Left as-is (pre-existing, copied verbatim from mobile)

- `offscreen_render.dart:47` — `avoid_single_cascade_in_expression_statements` info lint.
- `sale_details_entity.dart:50` — `unnecessary_const` info lint.

Both are exactly as they are in the mobile source; not worth diverging from
the source to silence a style info-lint on copied code.

### Known cross-app cleanup still needed regardless

- Web's `receipt_shared_sections.dart` imports `service_type_enums.dart`,
  mobile's is `main_service_type_enums.dart` — same enum, different file
  name. Pick mobile's name (source of truth) whenever this is wired up on
  the web side.
