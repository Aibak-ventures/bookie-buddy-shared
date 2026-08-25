# Changelog

## 0.1.0

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
- Not wired into either app yet — see `../../docs/PENDING.md`.
