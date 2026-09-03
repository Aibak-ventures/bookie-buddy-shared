# bookie-buddy-shared

Shared library code for Bookie Buddy's mobile (`booking_application`) and
web (`bookie_buddy_web`) apps — one package, `bookie_buddy_shared`, released
from this repo.

| Folder | What | Depends on Flutter? |
| --- | --- | --- |
| [`lib/core`](lib/core) | Entities, usecases, repository interfaces, domain enums | No — pure Dart by convention, checked by `scripts/check_core_purity.dart` |
| [`lib/ui`](lib/ui) | Design tokens, enum→color/icon mappings, receipt-rendering pipeline | Yes |

Formerly two packages (`bookie_buddy_core`, `bookie_buddy_ui`) — merged
into one; see `CHANGELOG.md`. The `core`/`ui` split is now a folder
convention rather than a package boundary; "Deciding where a piece of code
belongs" in the dev guide still applies.

This repo only covers the shared-code layer. Each app keeps its own repo,
CI, and release schedule — this doesn't change. Full rationale, decisions,
and status: `docs/shared-packages-plan.md` in the mobile app repo.

**Working with this repo day to day?** See
[`docs/SHARED_PACKAGE_DEV_GUIDE.md`](docs/SHARED_PACKAGE_DEV_GUIDE.md) —
what goes where, how to move existing duplicated code here, and pitfalls
already hit doing this.

> ⚠️ **Consuming apps have not migrated yet.** `Bookie-Buddy` and
> `Desktop-Bookie-buddy` still depend on the old `bookie_buddy_core` /
> `bookie_buddy_ui` packages until that migration is verified and done as
> explicit follow-up work. Don't tag/release expecting the apps to pick up
> `bookie_buddy_shared` until then.

## Structure

Mirrors each app's own feature layout, so imports stay predictable:

```text
lib/
├── bookie_buddy_shared.dart   # barrel — export everything consumers use
├── core/                      # pure Dart by convention
│   ├── core/constants/enums/
│   ├── core/common/{entities,helpers,utils}/
│   ├── features/<feature>/domain/{entities,repositories,usecases}/
│   └── utils/
└── ui/                        # Flutter-typed, depends on core/
    ├── features/<feature>/presentation/
    ├── theme/
    └── utils/
```

`lib/core/`'s pure-Dart convention (no Flutter import) is what used to make
the Clean Architecture rule "entities/usecases never import Flutter" a
build error instead of a review nit, back when `core` was its own
non-Flutter package. That's now checked by `scripts/check_core_purity.dart`
instead (run automatically by `scripts/release.dart`).

## Codegen

**Generated files (`*.freezed.dart`, `*.g.dart`) are committed, not
git-ignored.** Consumer apps fetch this repo as a `git:` dependency and
never run codegen against it — `build_runner` only generates code for the
package you're actively developing — so committing the generated output
here is what keeps every consumer's build from breaking on missing part
files. After touching any `@freezed`/`@JsonSerializable` class:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Commit the resulting diff.

## Versioning

One tag covers the whole package, bumped via `scripts/release.dart` (which
also runs `scripts/check_core_purity.dart` first, and asks before
pushing). Give it the new version, or omit it to release whatever
`version:` is already in `pubspec.yaml`:

```bash
dart run scripts/release.dart 0.2.0
# or, to release the version already in pubspec.yaml:
dart run scripts/release.dart
```

## Local development

While that repo migration is pending, this repo's own `pubspec.yaml` name
is `bookie_buddy_shared`. Once an app depends on it, the pattern is the
same two-mode setup documented in `docs/SHARED_PACKAGE_DEV_GUIDE.md`: a
git `ref:`-pinned tag committed normally, with a local-only
`pubspec_overrides.yaml` `path:` override for active cross-repo dev:

```yaml
# pubspec_overrides.yaml (git-ignored, local-only)
dependency_overrides:
  bookie_buddy_shared:
    path: ../bookie-buddy-shared
```

See `docs/SHARED_PACKAGE_DEV_GUIDE.md` for the full day-to-day workflow.
