# Changelog

## 0.1.0 — merged into `bookie_buddy_shared`

`bookie_buddy_core` and `bookie_buddy_ui` (two separate pub packages)
merged into one package, `bookie_buddy_shared`, with `lib/core/` (pure
Dart by convention, checked by `scripts/check_core_purity.dart`) and
`lib/ui/` (Flutter-typed) as folders instead of package boundaries.
Structural move only — file moves and import-path updates, no behavior
change. Version reset to `0.1.0` for the new package identity.

Rationale: the two packages always released together, were always
consumed together by both apps, and had no independent (non-Flutter)
consumer — the split was costing complexity (a pub solver conflict
between `bookie_buddy_ui`'s nested `path:` dependency on
`bookie_buddy_core` and any app's own tag-pinned dependency on it, worked
around at the time by pinning both to a raw commit SHA) without buying
real independence.

**Consuming apps have not migrated to `bookie_buddy_shared` yet** — that's
explicit follow-up work, not part of this change.

---

## Prior history (`packages/core`)

### 0.1.0

- Package scaffolded.
- Thermal-printer ticket domain (`print_ticket_entity`, `print_ticket_builder`)
  plus its tax/shop entity dependencies.
- `BookingDetailsEntity`, `SaleDetailsEntity`, and their full transitive
  entity/enum graph (33 files) — extracted to support the shared
  receipt-rendering pipeline in `bookie_buddy_ui`. Data layer, repository
  interfaces/impls, and usecases deliberately not ported. See
  `docs/PENDING.md`.

## Prior history (`packages/ui`)

### 0.1.0 (ui)

- Package scaffolded.
- Full receipt-rendering pipeline analyzing clean and exported:
  `receipt_canvas`, `monochrome`, `offscreen_render`,
  `receipt_date_formatter`, `receipt_shared_sections`,
  `shop_receipt_sections`, `booking_time_resolver`,
  `booking_receipt_canvas_builder`, `sales_receipt_canvas_builder`.
- `theme/status_ui_extensions.dart` — the Flutter-typed halves
  (`Color`/`IconData`) of enums split when their pure values moved into
  `bookie_buddy_core`.
- `utils/extensions/receipt_format_extensions.dart`,
  `utils/helpers/product_field_helper.dart` — narrow extractions from the
  mobile app's large multi-purpose util files.
- Not wired into either app yet — see `docs/PENDING.md`.
