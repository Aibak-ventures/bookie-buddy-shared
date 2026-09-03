# Shared Package Dev Guide

Practical "how", day to day. For "why this exists and what was decided",
see `docs/shared-packages-plan.md` in the mobile app repo; for the
history of what's been extracted so far, see `docs/PENDING.md` in this
repo. This file is the one to re-read before touching shared code.

## How the apps depend on this repo

Two ways, both permanent — pick by task, not by date:

| | `main` / CI / release | active cross-repo dev |
| --- | --- | --- |
| mechanism | git `ref:`-pinned tag | `path:` via `dependency_overrides` |
| where | `pubspec.yaml` → `dependencies:` | `pubspec_overrides.yaml` (git-ignored) |
| requires sibling folders? | no | yes |
| commit it? | yes | no |

### 1. Committed: git `ref:`-pinned tag

```yaml
# pubspec.yaml
dependencies:
  bookie_buddy_core:
    git:
      url: https://github.com/<org>/bookie-buddy-shared.git
      path: packages/core
      ref: v0.2.0   # a tag, not a branch
  bookie_buddy_ui:
    git:
      url: https://github.com/<org>/bookie-buddy-shared.git
      path: packages/ui
      ref: v0.2.0
```

Bump it like any dependency: edit `ref:`, run `flutter pub get`, commit
the lockfile.

Cut a new tag when this repo has changes an app needs, via
`scripts/release.sh` — it bumps `version:` in every `packages/*/pubspec.yaml`
to match, commits, and tags in one step (doesn't push):

```bash
scripts/release.sh v0.3.0
git push origin main --tags
```

Apps can be pinned to different tags — see `docs/PENDING.md` for what
each is currently on.

### 2. Local-only: `path:` override

For editing this repo and its consuming app in the same sitting, put
this in each app's **`pubspec_overrides.yaml`** (not `pubspec.yaml`):

```yaml
dependency_overrides:
  bookie_buddy_core:
    path: ../bookie-buddy-shared/packages/core
  bookie_buddy_ui:
    path: ../bookie-buddy-shared/packages/ui
```

Edits here are then live in the app instantly — no publish, no version
bump, no `pub get`. Requires all three repos as sibling folders at that
exact relative path.

`pubspec_overrides.yaml` is git-ignored by default (Dart's dedicated
override file — [docs](https://dart.dev/tools/pub/dependencies#dependency-overrides)),
so it never risks landing in a PR. If you ever add an override directly
to `pubspec.yaml` instead, remove it before committing —
`git diff pubspec.yaml` to confirm.

### Which one actually gets built

**`pubspec_overrides.yaml`, if present, always wins** — for every
command (`flutter run`, `flutter build`, debug or `--release`), not just
local dev builds. CI is safe by default: it clones fresh, so the
git-ignored override file never exists there and `pub get` always
resolves the pinned `ref:`. The risk is purely local — a `flutter build`
on your machine with a leftover override file silently ships the
sibling-folder code, not the tagged release.

**Before any local release build**, confirm which one you're on:

```bash
ls pubspec_overrides.yaml 2>/dev/null && echo "LOCAL override active" || echo "using pinned git ref"
```

For a real release build, move the override aside (don't delete it —
you'd have to retype it) so it can't apply, then resolve clean:

```bash
mv pubspec_overrides.yaml pubspec_overrides.yaml.bak
flutter pub get
flutter build apk --release   # or: flutter build web --release

# back to local dev afterwards:
mv pubspec_overrides.yaml.bak pubspec_overrides.yaml
flutter pub get
```

`pubspec_overrides.yaml.bak` isn't picked up by pub (only the exact
filename is), so it's inert while parked — add it to `.gitignore` too if
it isn't covered by a wildcard already.

To double check what actually got resolved after `pub get`, look at the
resolved path in `.dart_tool/package_config.json`:

```bash
grep -A2 '"name": "bookie_buddy_core"' .dart_tool/package_config.json
```

A `rootUri` starting with `file://../bookie-buddy-shared/...` means the
local override resolved; a `.pub-cache/git/...` path means it resolved
the pinned tag.

## Deciding where a piece of code belongs

- **Pure Dart, no Flutter import** (entities, usecases, repo interfaces,
  business-logic enums, plain-value helpers) → `bookie_buddy_core`.
- **Flutter-typed but a pure function of data → visual property** (an
  enum → `Color`/`IconData` extension, a receipt-canvas builder, design
  tokens) → `bookie_buddy_ui`.
- **Has a layout or interaction decision baked in** (a screen, a card,
  anything that differs between mobile and web on purpose — density,
  navigation chrome, hover states) → stays local to each app. Don't force
  this into the shared package just because it *could* compile there.

When in doubt, check the entity/model split rule in the root `CLAUDE.md`
first — it still applies inside `core`.

## Adding something brand-new

If a feature doesn't exist in either app yet and you know both will need
it, write it directly in `core`/`ui` to begin with. Don't write it in one
app locally "for now" — that just creates the duplication you'll have to
undo later.

## Moving existing duplicated code into the shared package

This is the common case: mobile and web (or mobile and the printer
builder) each have their own copy of something, and you want one. Steps,
in order:

1. **Confirm it's actually identical before moving anything.** Diff both
   copies after normalizing the package name, e.g.:

   ```bash
   diff <(sed 's/booking_application/bookie_buddy_core/g' mobile_file.dart) core_file.dart
   ```

   A real difference doesn't block sharing — it usually means one app
   needs a field/method the other doesn't. Extend the shared entity with
   a **nullable** field and a doc comment naming which app sets it and
   why (see `SaleDetailsEntity.client` for a worked example), rather than
   forcing one shape or duplicating the whole type. Never guess a
   divergence away — trace the real call site first.

2. **Find every consumer in both apps**, not just the ones you already
   know about:

   ```bash
   grep -rl "package:<app>/path/to/file.dart" lib test --include='*.dart' | grep -v freezed
   ```

   Check for barrel re-exports too (e.g. a `product_entity.dart` that
   both imports and `export`s `product_attributes_entity.dart`) — a
   barrel importer won't show up in a search for the direct file path.
   If a barrel re-export exists, it's often less churn to turn the local
   file into a one-line `export 'package:bookie_buddy_core/...';` shim
   than to touch every barrel consumer.

3. **Add the file to `core`/`ui`** at a sensible permanent location (not
   nested under whatever feature happened to need it first — see the
   `booking_time_resolver.dart` move, which started under
   `thermal_printer/` and got promoted to `features/booking/` once a
   second consumer showed up), and add it to that package's barrel
   export file (`bookie_buddy_core.dart` / `bookie_buddy_ui.dart`).

4. **Repoint every real consumer's import**, then **delete both apps'
   local copies**. Use `perl -pi -e` for bulk import-path swaps, not
   `sed` — BSD `sed` on macOS silently ignores `\b` word boundaries,
   which either no-ops or (worse) over-matches. When iterating a file
   list from `grep -rl ...`, always do it as
   `grep -rl ... | while IFS= read -r f; do ...; done` — an unquoted
   `$(...)` word-splits on spaces in the path itself and silently skips
   every file if any repo lives under a directory with a space in its
   name (as these do).

5. **Watch for a dependency graph, not just one file.** Swapping an
   entity's import can require swapping everything nested inside it too
   — e.g. `UserShopEntity` alone dragged in `ShopRole`, three tax-related
   entities, and two enums, because `UserShopEntity` has fields of those
   types. Diff and swap the *whole* transitive graph in one pass; a
   partial swap produces confusing "two types with the same name from
   different libraries" errors, not a clean compile.

6. **Run codegen if you touched any `@freezed`/`@JsonSerializable`
   class**, in whichever package(s) changed:

   ```bash
   dart run build_runner build --delete-conflicting-outputs   # core (pure Dart)
   flutter pub run build_runner build --delete-conflicting-outputs   # ui, mobile, web
   ```

7. **Analyze all four**, every time, even if you only think you touched
   one:

   ```bash
   (cd packages/core && dart analyze)
   (cd packages/ui && flutter analyze)
   (cd ../Bookie-Buddy && flutter analyze)
   (cd ../Desktop-Bookie-buddy && flutter analyze)
   ```

   Let the compiler enumerate what's actually broken rather than
   grep-guessing which call sites need changes — this is the single most
   reliable technique for this kind of migration.

8. **Sweep for orphaned local files.** After deleting real consumers'
   references, a helper file can end up with zero remaining consumers in
   an app but still compile fine (no analyzer error to catch it) —
   because it was already superseded by the shared version and nobody
   went back to delete the local copy. Find these at the end of a
   migration pass:

   ```bash
   comm -12 \
     <(cd packages/core/lib && find . -name "*.dart" ! -name "*.freezed.dart" ! -name "*.g.dart" | sort) \
     <(cd ../Bookie-Buddy/lib && find . -name "*.dart" ! -name "*.freezed.dart" ! -name "*.g.dart" | sort)
   ```

   Any filename that shows up in both trees is worth a second look —
   confirm it's dead (zero real consumers, not just zero errors) before
   deleting.

## Commit discipline

This repo, mobile, and web are three separate git histories — commit
each one separately, in this order: shared package first, then each app
that consumes the change. Write the commit message from the actual diff
(`git status`/`git diff`), not from memory of what you intended to do.
