# Changelog

## 1.12.0 — script tooling

Added `lib/tooling/` — dev-only helpers for Dart project scripts, shared by
the mobile and web repos. Additive; no breaking changes. Import
`package:bookie_buddy_shared/tooling/tooling.dart` directly; it is not exported
by the main barrel. See `lib/tooling/README.md`.

- `ScriptContext` (colored output, running processes, files, prompts),
  `ScriptCommand` / `ScriptRunner` / `runCommand` / `runScript`,
  `FlutterTooling`, `GitTooling`, and `String` / `ProcessResult` extensions.
- Clickable output: http(s) URLs and a message that is exactly an existing
  absolute path are linked automatically; `ScriptContext.pathLink()` and
  `String.link()` link explicitly. Colors and links turn off when output is
  piped or `NO_COLOR` is set; `FORCE_COLOR` turns them on.
- A command that can't be started, and any other exception in a script, ends
  with a clean `Error: ...` instead of a stack trace.
- `scripts/release.dart` and `scripts/check_core_purity.dart` now use the
  tooling (`release.dart` also reports a failed push with the manual command).
  The dirty-tree check matches `pubspec.yaml` exactly instead of any path
  ending in it.
- `scripts/check_core_purity.dart` also enforces three import rules:
  `lib/core/`, `lib/ui/` and the barrel don't touch `lib/tooling/`;
  `lib/tooling/` imports only plain-Dart `dart:` libraries and its own files;
  `scripts/` and `example/` import only the tooling (barrel preferred; no
  `dart:io`, no packages, no `..` imports).
- Added `example/tooling_demo.dart` (a runnable tour of the helpers) and
  `test/tooling/`.

## 1.11.0 — security paid date rules

Shared the rules for the date a booking's security deposit was paid, so mobile
and web edit screens can't drift. Additive; no breaking changes.

- Added `BookingDetailsSecurityPaidDateX` on `BookingDetailsEntity`
  (`bookedDateOnly`, `securityPaidLastDate`, `canEditSecurityPaidDate`,
  `savedSecurityPaidDate`). The paid date can't be before the booked date, nor
  after today or the first security refund/deduction; the field is pointless
  when that range is a single day. Apps should use these instead of local
  copies.

## 1.9.0 — shared measurement models and wire format

Moved the `measurements` blob handling out of the apps so mobile and web read
and write it identically. Additive; no breaking changes.

- Added `MeasurementValueModel` and `PersonMeasurementsModel`
  (`lib/core/features/booking/data/models/`), with `fromCustomJson` /
  `toCustomJson` and `List<PersonMeasurementsEntity>.toMeasurementsJson()`.
  - Read accepts the legacy flat shape and the keyed shape; write is always
    keyed, inner values keyed by the backend key (`chest`), unnamed people
    stored as "Person N".
  - Values that belong to the product, not a person (`VehicleMeasurementKeys`,
    currently `running_kilometers`), are stored beside the people instead of
    under "Person 1": `{"running_kilometers": "1000 Km"}`. They read back as
    part of the first person, so apps keep treating them as ordinary values.
- Added `MeasurementConstants.personNameAt`.
- Added `PersonMeasurementRules` (`displayName`, `capacity`,
  `usesSinglePersonForm`, `countLabel`).
- Added `withoutEmptyPeople()` on `List<PersonMeasurementsEntity>`.
- Added `StandardMeasurementFields` (`all`, plus a constant per key): the one
  list of default measurement fields (name, backend key, description, gender)
  both apps' forms are built from. It is the union of the former mobile and
  web lists, so web gains sleeve width, regal, elbow, pad and shoulder strap.
- All of the above are exported from `bookie_buddy_shared.dart`.

Migration: apps must delete their local copies of these models and field
lists and import them from here.

## 1.8.0 — per-person measurements

**Breaking.** Added `PersonMeasurementsEntity` (a name plus its
`MeasurementValueEntity` list) so one product line can hold a measurement set
per person. `ProductInfoEntity.measurements` is replaced by
`peopleMeasurements` (`List<PersonMeasurementsEntity>`); an empty name is the
legacy single set. The JSON key stays `measurements`.
`PersonMeasurementsEntityListX` adds `allValues`, `limitedTo(n)` (keep the
first n people when a quantity shrinks) and `fingerprint` (order-
independent change detection); `MeasurementValueListX.toSinglePerson()` wraps a
flat list.

Also fixed: `String.getInitialLetters` split a surrogate pair for emoji and other
astral characters, producing an invalid string that throws when rendered.

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
