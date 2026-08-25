# Changelog

## 0.1.0

- Package scaffolded.
- Thermal-printer ticket domain (`print_ticket_entity`, `print_ticket_builder`)
  plus its tax/shop entity dependencies.
- `BookingDetailsEntity`, `SaleDetailsEntity`, and their full transitive
  entity/enum graph (33 files) — extracted to support the shared receipt-
  rendering pipeline in `bookie_buddy_ui`. Data layer, repository
  interfaces/impls, and usecases deliberately not ported. See
  `../../docs/PENDING.md`.
