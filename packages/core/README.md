# bookie_buddy_core

Shared domain layer for Bookie Buddy's mobile (`booking_application`) and
web (`bookie_buddy_web`) apps: entities, usecases, repository interfaces,
and the enums domain code depends on.

**Pure Dart — no Flutter dependency, on purpose.** This is what makes the
Clean Architecture rule "entities/usecases never import Flutter" a build
error instead of a review nit: if this package ever gains a `flutter`
dependency, that guarantee is gone. See the full rationale and the planned
`bookie_buddy_ui` companion package in the mobile repo's
`docs/shared-packages-plan.md`.

## Structure

Mirrors each app's own feature layout, so imports stay predictable:

```
lib/
└── features/
    └── <feature>/
        └── domain/
            ├── entities/
            ├── repositories/   # interfaces only — I<Name>Repository
            └── usecases/
```

Enums referenced by the above live under `lib/core/constants/enums/`,
matching where they live in each app today.

## Versioning

Released in lockstep with `bookie_buddy_ui` (same repo, same tag) — see
`../../scripts/release.sh`. Consuming apps pin a git `ref` per package in
their own `pubspec.yaml` and upgrade independently of each other.

## Codegen

After touching any `@freezed`/`@JsonSerializable` class:

```bash
dart run build_runner build --delete-conflicting-outputs
```
