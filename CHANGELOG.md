# Changelog

## 1.7.0 — single `CancellationToken` (carries the Dio token)

**Breaking.** `CancellationToken` now owns a Dio `CancelToken`, exposed as
`dioToken`, and `cancel([reason])` cancels both (idempotent). One token now
covers app-level and HTTP cancellation, so callers no longer create and pass
two.

- Repository implementations in the consuming apps must pass
  `cancelToken.dioToken` to Dio (`cancelToken:` / `dio.download`) so
  in-flight requests are aborted too. This package only defines the
  interfaces; it contains no implementations.
- Download use cases and repository interfaces renamed `funCancelToken` →
  `cancelToken`: `IAccountRepository.downloadAccountStatementPdf`,
  `IClientRepository.downloadClientPdfReport`, and their use cases.
- Removed the separate `dioCancelToken` parameter from
  `downloadAccountStatementPdf` / `DownloadAccountStatementUseCase`.
- Migration: replace `funCancelToken:` with `cancelToken:`, drop
  `dioCancelToken:`, and use `token.dioToken` wherever a Dio `CancelToken`
  was passed. UI that cancelled both tokens only needs `token.cancel()`.

## 1.6.4 — payment notes

Added `PaymentNotes`, standardized payment and refund message strings
shared by both apps.

## 1.6.3 — string extensions

Extended the string extensions with additional utility methods and null
checks.

## 1.6.2 — refund availability and shared date/time utils

Added `RefundAvailabilityCalculator` (ledger-based refund availability and
unavailability messaging), a generic `SnackBarMessage` base class and a
booking refund-history mapper. Consolidated the date/time and string-date
extensions into core/ui split files so both apps share one implementation.

## 1.6.1 — booking security refund

Enhanced the booking status enums and added security-refund logic to
`BookingDetailsEntity`.

## 1.6.0 — client PDF report download

Added `DownloadClientPdfReportUseCase` and
`IClientRepository.downloadClientPdfReport`.

## 1.5.0 — additional-charge accounts

- `AdditionalChargesEntity` gained nullable `accountId` / `accountName`, so
  a charge can be attributed to the account it was paid from/into.
- `calculateFlatTaxAmount`'s `taxCalculationType` now defaults to
  inclusive (was required). Non-breaking; existing callers pass it
  explicitly.

## 1.4.0 — sale payments

Added `SalePaymentEntity` and `SalesPaymentRequestEntity`. The sales
receipt builder handles multiple payment methods, showing each leg's
account and amount for split payments.

## 1.2.0 — client domain layer

`core/features/client/domain/` filled out past just `ClientEntity`
(extracted earlier): `ClientRequestEntity`, `IClientRepository`, and the
usecases (`GetClientsUseCase`, `AddClientUseCase`, `UpdateClientUseCase`,
`DeleteClientUseCase`, `GetClientDetailsUseCase`). Both mobile and web
migrated onto this in the same pass — local copies deleted from both
apps. Field names follow mobile's existing convention (`phone1`/`phone2`,
both E.164-formatted, no `E164` suffix — web's local
`phone1E164`/`phone2E164` renamed to match); `id` is non-required
nullable (web's was `required int? id`). Web's `getClientById` renamed to
`getClientDetails` on the shared interface — mobile doesn't call it yet
(its `ClientRepositoryImpl` throws `UnimplementedError` until it does),
web's underlying datasource/endpoint method keeps its original name
(data layer stays local per app). `searchPhone` stayed `int?` (mobile's
existing parsed-from-text-field behavior) — web's was `String?` but never
actually called with a non-null value, so the type change is a no-op
there.

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
