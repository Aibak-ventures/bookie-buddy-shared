# Shared Package Dev Guide

Practical "how", day to day. For "why this exists and what was decided",
see `docs/shared-packages-plan.md` in the mobile app repo; for the
history of what's been extracted so far, see `docs/PENDING.md` in this
repo. This file is the one to re-read before touching shared code.

## How the apps depend on this repo today

Both `Bookie-Buddy` (mobile) and `Desktop-Bookie-buddy` (web) use a
`path:` dependency:

```yaml
bookie_buddy_core:
  path: ../bookie-buddy-shared/packages/core
bookie_buddy_ui:
  path: ../bookie-buddy-shared/packages/ui
```

This means **edits here are live immediately** in both apps, no publish
step, no version bump, no `pub get` even (unless you added/removed a
dependency in one of this repo's own `pubspec.yaml`s). The cost: it only
works when all three repos sit as sibling folders at that exact relative
path — true on your machine, not automatically true for a teammate or CI.
Don't switch this to a git `ref:`-pinned tag while still actively finding
things to share; do it once things settle, before a real release build
needs to work without the sibling-folder layout.

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
