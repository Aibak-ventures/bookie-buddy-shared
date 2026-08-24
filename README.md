# bookie-buddy-shared

Shared library code for Bookie Buddy's mobile (`booking_application`) and
web (`bookie_buddy_web`) apps — split into independently-purposed packages
that release together from this one repo.

| Package | What | Depends on Flutter? |
|---|---|---|
| [`packages/core`](packages/core) | Entities, usecases, repository interfaces, domain enums | No — pure Dart, on purpose |
| `packages/ui` | Design tokens, enum→color/icon mappings, atomic widgets | Yes (not built yet) |

This repo only covers the shared-code layer. Each app keeps its own repo,
CI, and release schedule — this doesn't change. Full rationale, decisions,
and status: `docs/shared-packages-plan.md` in the mobile app repo.

## Versioning

Every package in this repo is released in lockstep — one tag covers all of
them, bumped together via `scripts/release.sh`. Consuming apps then pin
whichever packages they use to that tag independently of each other.

```bash
scripts/release.sh v0.1.0
```

## Local development

Apps that want to test against an unreleased change use a
`dependency_overrides` path pointing here, removed again before merging:

```yaml
dependency_overrides:
  bookie_buddy_core: {path: ../bookie-buddy-shared/packages/core}
```
