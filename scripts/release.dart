// Cuts a release: checks lib/core/ purity, bumps `version:` in
// pubspec.yaml (if a version is given), commits, tags, and optionally
// pushes.
//
// Usage:
//   dart run scripts/release.dart 0.2.0   # bump pubspec.yaml, then release
//   dart run scripts/release.dart         # release the version already in
//                                         # pubspec.yaml (e.g. you already
//                                         # hand-edited it)
import 'package:bookie_buddy_shared/tooling/tooling.dart';

Future<void> main(List<String> args) => runScript(
  (context) => _release(context, args),
  context: ScriptContext.forScriptRoot(),
);

Future<void> _release(ScriptContext context, List<String> args) async {
  // 1. Validate arguments.
  if (args.length > 1) {
    context.fail(
      'too many arguments (${args.length}).\n'
      'Fix: pass at most one — a semver version like 0.2.0 — '
      'or none to release the version already in pubspec.yaml.\n'
      'Usage: dart run scripts/release.dart [vX.Y.Z]',
    );
  }

  // 2. Repository root: the script runs with it as the working directory, so
  // plain `git ...` commands below act on this repo.
  final repoRoot = context.root.path;

  // 3. Verify we're inside a git repository.
  final insideRepo = await context.exec('git', [
    'rev-parse',
    '--is-inside-work-tree',
  ]);
  if (!insideRepo.succeeded) {
    context.fail(
      '$repoRoot is not a git repository.\n'
      'Cause: `git rev-parse --is-inside-work-tree` failed there.\n'
      'Fix: run this from inside the bookie-buddy-shared checkout '
      '(or `git init` there first, if it\'s genuinely not a repo yet).',
    );
  }

  // 4. Verify the current branch (not detached HEAD).
  final branch = await context.capture('git', [
    'rev-parse',
    '--abbrev-ref',
    'HEAD',
  ]);
  if (branch == 'HEAD') {
    context.fail(
      'you\'re in a detached HEAD state.\n'
      'Cause: `git rev-parse --abbrev-ref HEAD` returned "HEAD", not a '
      'branch name — there\'s nothing for the release commit to land on, and '
      'nothing to push it from later.\n'
      'Fix: `git checkout <branch>` (e.g. `git checkout main`) before '
      'releasing.',
    );
  }

  final pubspecText = context.read('pubspec.yaml');

  // 5. Verify a clean working tree, except for pubspec.yaml — which may
  // legitimately already be dirty (you hand-edited `version:` and are
  // running with no arg) or is about to be written by this script (you
  // passed a version). This script only ever stages pubspec.yaml for the
  // release commit (step 10), so other uncommitted changes won't actually
  // get swept in — but releasing from an otherwise-dirty tree is a good
  // sign you didn't mean to release *right now*, or forgot the other
  // changes exist. Catch that before tagging, not after.
  final status = await context.capture('git', ['status', '--porcelain']);
  final dirty = status.nonEmptyLines.where((l) => !l.endsWith('pubspec.yaml'));
  if (dirty.isNotEmpty) {
    context.fail(
      'working tree has uncommitted changes beyond pubspec.yaml:\n'
      '${dirty.map((l) => '  $l').join('\n')}\n'
      'Cause: releasing from an otherwise-dirty tree usually means either '
      'those changes were meant to ship in this release (and should be '
      'committed first) or you didn\'t mean to release right now.\n'
      'Fix: commit them separately first (`git add -A && git commit`), '
      'or stash them (`git stash`) and re-run.',
    );
  }

  // 6. Find the latest existing release tag, if any — used below so that
  // whatever version we land on (from pubspec.yaml, a CLI argument, or a
  // manual retry) is actually newer than what's already been released, not
  // just different from it.
  final latestTag = await _findLatestReleaseTag(context);

  // 7. Determine the version.
  String version;
  if (args.isEmpty) {
    final current = context.pubspecVersion();
    if (current == null) {
      context.fail(
        'could not find a `version:` key in pubspec.yaml.\n'
        'Cause: no argument was given, so this script tried to read the '
        'version to release from pubspec.yaml instead.\n'
        'Fix: add a `version: X.Y.Z` line to pubspec.yaml, or re-run with '
        'an explicit version argument (e.g. '
        '`dart run scripts/release.dart 0.2.0`).',
      );
    }
    version = current;
    if (!version.isSemver) {
      context.fail(
        'pubspec.yaml has `version: $version`, which isn\'t a plain semver.\n'
        'Cause: no argument was given, so this script tried to release '
        'that value as-is, and it doesn\'t match X.Y.Z (e.g. 0.2.0).\n'
        'Fix: correct `version:` in pubspec.yaml by hand, or re-run with '
        'an explicit version argument to overwrite it.',
      );
    }

    // Only offer to confirm pubspec.yaml's version if it would actually be
    // releasable — no point asking "release $version?" when it's stale.
    final staleError = _notNewerThanLatestError(version, latestTag);
    var needsNewVersion = true;
    if (staleError == null) {
      needsNewVersion = !context.confirm(
        'No version given — release the version already in pubspec.yaml, '
        '$version?',
      );
    } else {
      context.error('Error: $staleError');
      context.info(
        'The version already in pubspec.yaml can\'t be released as-is.',
      );
    }

    if (needsNewVersion) {
      while (true) {
        final input = context.prompt(
          'Enter a version to release instead (or leave blank to cancel): ',
        );
        if (input.isEmpty) {
          context.info('Cancelled.');
          return;
        }
        final candidate = input.withoutPrefix('v');
        if (!candidate.isSemver) {
          context.error(
            'Error: "$input" isn\'t a plain semver (e.g. 0.2.0). Try again.',
          );
          continue;
        }
        final error = _notNewerThanLatestError(candidate, latestTag);
        if (error != null) {
          context.error('Error: $error');
          continue;
        }
        version = candidate;
        break;
      }
    }
  } else {
    final arg = args[0];
    version = arg.withoutPrefix('v');
    if (!version.isSemver) {
      context.fail(
        '"$arg" isn\'t a valid version.\n'
        'Cause: expected a plain semver, optionally v-prefixed '
        '(X.Y.Z or vX.Y.Z).\n'
        'Fix: pass e.g. `0.2.0` or `v0.2.0`.',
      );
    }
    final error = _notNewerThanLatestError(version, latestTag);
    if (error != null) context.fail(error);
  }

  final tag = 'v$version';

  // 8. Check the tag doesn't already exist locally...
  final localTagCheck = await context.capture('git', ['tag', '--list', tag]);
  if (localTagCheck.isNotEmpty) {
    context.fail(
      'tag $tag already exists locally.\n'
      'Cause: `git tag --list $tag` found it — releasing again with the '
      'same version would conflict with it.\n'
      'Fix: bump to a new version, or if $tag was created by mistake, '
      'delete it first (`git tag -d $tag`, and '
      '`git push origin :refs/tags/$tag` too if it was already pushed).',
    );
  }
  // ...or on the remote (a teammate may have pushed it without you having
  // fetched it — local-only would miss that and the eventual push would
  // fail instead, with a less clear error). Best-effort: don't block a
  // release on a network hiccup or missing `origin`, just warn.
  final remoteTagCheck = await context.exec('git', [
    'ls-remote',
    '--tags',
    'origin',
    'refs/tags/$tag',
  ]);
  if (!remoteTagCheck.succeeded) {
    context
      ..warn('could not check whether $tag exists on origin.')
      ..warn(
        'Cause: `git ls-remote --tags origin` failed — likely offline, or '
        'no `origin` remote configured.',
      )
      ..warn(
        'Continuing without that check; the local-only check above still '
        'ran.',
      );
  } else if (remoteTagCheck.output.isNotEmpty) {
    context.fail(
      'tag $tag already exists on origin.\n'
      'Cause: `git ls-remote` found it there, even though your local clone '
      'hasn\'t fetched it (so the local-only check above missed it) — '
      'probably a teammate already released this version.\n'
      'Fix: `git fetch --tags` to confirm, then bump to a new version — or '
      'delete the remote tag first if it was pushed by mistake '
      '(`git push origin :refs/tags/$tag`).',
    );
  }

  // 9. Check lib/core purity (and the lib/tooling boundary).
  context.step('Checking lib/core purity...');
  await context.run('dart', ['run', 'scripts/check_core_purity.dart']);

  // 10. Run the test suite. Apps pin this repo by tag — a regression that
  // slips into a release gets silently consumed under that tag's name, so
  // this gates the release exactly like the purity check does.
  context.step('Running tests...');
  await FlutterTooling(context).flutter(['test']);

  // 11. Update pubspec.yaml, if a version was given.
  if (args.isNotEmpty) {
    context.step('Bumping pubspec.yaml to $version');
    // Only touches the top-level `version:` key, not any dependency
    // version — anchored to line start.
    final updated = pubspecText.replaceFirst(
      RegExp(r'^version: .*$', multiLine: true),
      'version: $version',
    );
    context.write('pubspec.yaml', updated);
  }

  // 12-14. Commit and tag — but only commit if pubspec.yaml actually
  // differs from HEAD. It won't if: the given version matches what was
  // already there (a no-op bump), or no version was given and it was
  // already committed separately (e.g. hand-edited and committed earlier,
  // now just tagging it). `git commit` would otherwise fail with "nothing
  // to commit" — check for that ourselves, so it's a normal path instead
  // of an error.
  final pubspecDiff = await context.capture('git', [
    'status',
    '--porcelain',
    '--',
    'pubspec.yaml',
  ]);
  if (pubspecDiff.isEmpty) {
    context.info(
      '\npubspec.yaml already has version $version at HEAD — nothing to '
      'commit, tagging HEAD directly.',
    );
  } else {
    context.step('Committing release...');
    await context.run('git', ['add', 'pubspec.yaml']);
    await context.run('git', ['commit', '-m', 'chore: release $tag']);
  }
  context.step('Tagging $tag...');
  await context.run('git', ['tag', '-a', tag, '-m', 'Release $tag']);
  context.info('Tagged $tag locally.');

  // 15. Ask to push.
  if (context.confirm('\nPush "$branch" and tag $tag to origin now?')) {
    context.info('Pushing...');
    // Push the branch and this tag by name — not `--tags`, which pushes
    // every local tag not yet on the remote (stray/experimental tags
    // included, not just the one this release just made).
    try {
      await context.run('git', ['push', 'origin', branch, tag]);
    } on ScriptFailure {
      context.fail(
        'push failed — the release commit and tag $tag exist locally.\n'
        'Fix: resolve the problem above, then push manually: '
        '`git push origin $branch $tag`.',
      );
    }
    context.info('Pushed.');
  } else {
    context
      ..info('Not pushed. Push manually with:')
      ..info('  git -C "$repoRoot" push origin $branch $tag');
  }

  context
    ..info('')
    ..info(
      'Commit SHA for consuming apps\' pubspec.yaml ref: (if still pinning '
      'by SHA):',
    )
    ..info('  git -C "$repoRoot" rev-parse $tag');
}

/// Returns the highest `vX.Y.Z` tag in the repo by semver order (not
/// lexical order), or null if there are no release tags yet.
Future<String?> _findLatestReleaseTag(ScriptContext context) async {
  final tags = (await context.capture('git', [
    'tag',
    '--list',
    'v*',
  ])).nonEmptyLines.where((t) => t.withoutPrefix('v').isSemver);
  if (tags.isEmpty) return null;
  return tags.reduce(
    (a, b) =>
        a.withoutPrefix('v').compareSemver(b.withoutPrefix('v')) >= 0 ? a : b,
  );
}

/// Error message (Cause/Fix formatted, without the leading "Error: ") if
/// [version] is not strictly newer than [latestTag] (a `vX.Y.Z` tag, or null
/// if no release exists yet) — or null if [version] is fine to release.
String? _notNewerThanLatestError(String version, String? latestTag) {
  if (latestTag == null) return null;
  final latestVersion = latestTag.substring(1);
  if (version.compareSemver(latestVersion) > 0) return null;
  return '$version is not newer than the latest release, $latestTag.\n'
      'Cause: the highest existing `v*` tag found via `git tag --list` is '
      '$latestTag — releasing $version would go backwards or repeat it.\n'
      'Fix: pick a version greater than $latestVersion, or `git fetch '
      '--tags` first if $latestTag was released elsewhere and your clone '
      'hasn\'t seen it yet.';
}
