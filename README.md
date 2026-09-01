# bookie-buddy-shared

Shared library code for Bookie Buddy's mobile (`booking_application`) and
web (`bookie_buddy_web`) apps — split into independently-purposed packages
that release together from this one repo.

| Package | What | Depends on Flutter? |
| --- | --- | --- |
| [`packages/core`](packages/core) | Entities, usecases, repository interfaces, domain enums | No — pure Dart, on purpose |
| [`packages/ui`](packages/ui) | Design tokens, enum→color/icon mappings, receipt-rendering pipeline | Yes |

This repo only covers the shared-code layer. Each app keeps its own repo,
CI, and release schedule — this doesn't change. Full rationale, decisions,
and status: `docs/shared-packages-plan.md` in the mobile app repo.

**Working with this repo day to day?** See
[`docs/SHARED_PACKAGE_DEV_GUIDE.md`](docs/SHARED_PACKAGE_DEV_GUIDE.md) —
what goes where, how to move existing duplicated code here, and pitfalls
already hit doing this.

## Versioning

Every package in this repo is released in lockstep — one tag covers all of
them, bumped together via `scripts/release.sh`. Consuming apps then pin
whichever packages they use to that tag independently of each other.

```bash
scripts/release.sh v0.1.0
```

## Local development

Both apps currently depend on this repo directly via a `path:` dependency
(not `dependency_overrides` — this is the primary, active dependency
while co-developing):

```yaml
bookie_buddy_core:
  path: ../bookie-buddy-shared/packages/core
bookie_buddy_ui:
  path: ../bookie-buddy-shared/packages/ui
```

Edits here are live in both apps immediately — no publish step, no
version bump. Switch to a git `ref:`-pinned tag before a release build
needs to work without this repo checked out as a sibling folder. See
`docs/SHARED_PACKAGE_DEV_GUIDE.md` for the full day-to-day workflow.
