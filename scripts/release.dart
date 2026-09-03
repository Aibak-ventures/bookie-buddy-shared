// Cuts a release: checks lib/core/ purity, bumps `version:` in
// pubspec.yaml (if a version is given), commits, tags, and optionally
// pushes.
//
// Usage:
//   dart run scripts/release.dart 0.2.0   # bump pubspec.yaml, then release
//   dart run scripts/release.dart         # release the version already in
//                                         # pubspec.yaml (e.g. you already
//                                         # hand-edited it)
import 'dart:io';

final _semver = RegExp(r'^\d+\.\d+\.\d+$');

void main(List<String> args) {
  // 1. Validate arguments.
  if (args.length > 1) {
    stderr.writeln('Error: too many arguments (${args.length}).');
    stderr.writeln('Fix: pass at most one — a semver version like 0.2.0 — '
        'or none to release the version already in pubspec.yaml.');
    stderr.writeln('Usage: dart run scripts/release.dart [vX.Y.Z]');
    exit(1);
  }

  // 2. Find repository root.
  final scriptDir = File.fromUri(Platform.script).parent;
  final repoRoot = scriptDir.parent.path;

  // 3. Verify we're inside a git repository.
  final insideRepo = _run(
    'git',
    ['-C', repoRoot, 'rev-parse', '--is-inside-work-tree'],
    repoRoot,
    quiet: true,
    allowFailure: true,
  );
  if (insideRepo.exitCode != 0) {
    stderr.writeln('Error: $repoRoot is not a git repository.');
    stderr.writeln('Cause: `git rev-parse --is-inside-work-tree` failed there.');
    stderr.writeln('Fix: run this from inside the bookie-buddy-shared checkout '
        '(or `git init` there first, if it\'s genuinely not a repo yet).');
    exit(1);
  }

  // 4. Verify the current branch (not detached HEAD).
  final branchResult = _run(
    'git',
    ['-C', repoRoot, 'rev-parse', '--abbrev-ref', 'HEAD'],
    repoRoot,
    quiet: true,
  );
  final branch = branchResult.stdout.toString().trim();
  if (branch == 'HEAD') {
    stderr.writeln('Error: you\'re in a detached HEAD state.');
    stderr.writeln('Cause: `git rev-parse --abbrev-ref HEAD` returned "HEAD", not a '
        'branch name — there\'s nothing for the release commit to land on, and '
        'nothing to push it from later.');
    stderr.writeln('Fix: `git checkout <branch>` (e.g. `git checkout main`) before '
        'releasing.');
    exit(1);
  }

  final pubspec = File('$repoRoot/pubspec.yaml');
  final pubspecText = pubspec.readAsStringSync();

  // 5. Verify a clean working tree, except for pubspec.yaml — which may
  // legitimately already be dirty (you hand-edited `version:` and are
  // running with no arg) or is about to be written by this script (you
  // passed a version). This script only ever stages pubspec.yaml for the
  // release commit (step 10), so other uncommitted changes won't actually
  // get swept in — but releasing from an otherwise-dirty tree is a good
  // sign you didn't mean to release *right now*, or forgot the other
  // changes exist. Catch that before tagging, not after.
  final status = _run('git', ['-C', repoRoot, 'status', '--porcelain'], repoRoot, quiet: true);
  final dirty = status.stdout
      .toString()
      .split('\n')
      .where((l) => l.trim().isNotEmpty && !l.trim().endsWith('pubspec.yaml'));
  if (dirty.isNotEmpty) {
    stderr.writeln('Error: working tree has uncommitted changes beyond pubspec.yaml:');
    for (final l in dirty) {
      stderr.writeln('  $l');
    }
    stderr.writeln('Cause: releasing from an otherwise-dirty tree usually means either '
        'those changes were meant to ship in this release (and should be committed '
        'first) or you didn\'t mean to release right now.');
    stderr.writeln('Fix: commit them separately first (`git add -A && git commit`), '
        'or stash them (`git stash`) and re-run.');
    exit(1);
  }

  // 6. Determine the version.
  final String version;
  if (args.isEmpty) {
    final match = RegExp(r'^version: (.+)$', multiLine: true).firstMatch(pubspecText);
    if (match == null) {
      stderr.writeln('Error: could not find a `version:` key in ${pubspec.path}.');
      stderr.writeln('Cause: no argument was given, so this script tried to read the '
          'version to release from pubspec.yaml instead.');
      stderr.writeln('Fix: add a `version: X.Y.Z` line to pubspec.yaml, or re-run with '
          'an explicit version argument (e.g. `dart run scripts/release.dart 0.2.0`).');
      exit(1);
    }
    version = match.group(1)!.trim();
    if (!_semver.hasMatch(version)) {
      stderr.writeln('Error: pubspec.yaml has `version: $version`, which isn\'t a '
          'plain semver.');
      stderr.writeln('Cause: no argument was given, so this script tried to release '
          'that value as-is, and it doesn\'t match X.Y.Z (e.g. 0.2.0).');
      stderr.writeln('Fix: correct `version:` in pubspec.yaml by hand, or re-run with '
          'an explicit version argument to overwrite it.');
      exit(1);
    }
    stdout.write('No version given — release the version already in pubspec.yaml, '
        '$version? (y/N): ');
    final confirm = stdin.readLineSync()?.trim().toLowerCase();
    if (confirm != 'y' && confirm != 'yes') {
      print('Cancelled. Re-run with an explicit version if $version wasn\'t what '
          'you meant.');
      exit(0);
    }
  } else {
    final arg = args[0];
    version = arg.startsWith('v') ? arg.substring(1) : arg;
    if (!_semver.hasMatch(version)) {
      stderr.writeln('Error: "$arg" isn\'t a valid version.');
      stderr.writeln('Cause: expected a plain semver, optionally v-prefixed '
          '(X.Y.Z or vX.Y.Z).');
      stderr.writeln('Fix: pass e.g. `0.2.0` or `v0.2.0`.');
      exit(1);
    }
  }

  final tag = 'v$version';

  // 7. Check the tag doesn't already exist locally...
  final localTagCheck = _run('git', ['-C', repoRoot, 'tag', '--list', tag], repoRoot, quiet: true);
  if (localTagCheck.stdout.toString().trim().isNotEmpty) {
    stderr.writeln('Error: tag $tag already exists locally.');
    stderr.writeln('Cause: `git tag --list $tag` found it — releasing again with the '
        'same version would conflict with it.');
    stderr.writeln('Fix: bump to a new version, or if $tag was created by mistake, '
        'delete it first (`git tag -d $tag`, and `git push origin :refs/tags/$tag` too '
        'if it was already pushed).');
    exit(1);
  }
  // ...or on the remote (a teammate may have pushed it without you having
  // fetched it — local-only would miss that and the eventual push would
  // fail instead, with a less clear error). Best-effort: don't block a
  // release on a network hiccup or missing `origin`, just warn.
  final remoteTagCheck = _run(
    'git',
    ['-C', repoRoot, 'ls-remote', '--tags', 'origin', 'refs/tags/$tag'],
    repoRoot,
    quiet: true,
    allowFailure: true,
  );
  if (remoteTagCheck.exitCode != 0) {
    stderr.writeln('Warning: could not check whether $tag exists on origin.');
    stderr.writeln('Cause: `git ls-remote --tags origin` failed — likely offline, or no '
        '`origin` remote configured.');
    stderr.writeln('Continuing without that check; the local-only check above still ran.');
  } else if (remoteTagCheck.stdout.toString().trim().isNotEmpty) {
    stderr.writeln('Error: tag $tag already exists on origin.');
    stderr.writeln('Cause: `git ls-remote` found it there, even though your local clone '
        'hasn\'t fetched it (so the local-only check above missed it) — probably a '
        'teammate already released this version.');
    stderr.writeln('Fix: `git fetch --tags` to confirm, then bump to a new version — or '
        'delete the remote tag first if it was pushed by mistake '
        '(`git push origin :refs/tags/$tag`).');
    exit(1);
  }

  // 8. Check lib/core purity.
  print('\nChecking lib/core purity...');
  _run('dart', ['run', 'scripts/check_core_purity.dart'], repoRoot);

  // 8b. Run the test suite. Apps pin this repo by tag — a regression that
  // slips into a release gets silently consumed under that tag's name, so
  // this gates the release exactly like the purity check does.
  print('\nRunning tests...');
  _run('flutter', ['test'], repoRoot);

  // 9. Update pubspec.yaml, if a version was given.
  if (args.isNotEmpty) {
    print('\nBumping ${pubspec.path} to $version');
    // Only touches the top-level `version:` key, not any dependency
    // version — anchored to line start.
    final updated = pubspecText.replaceFirst(
      RegExp(r'^version: .*$', multiLine: true),
      'version: $version',
    );
    pubspec.writeAsStringSync(updated);
  }

  // 10-13. Commit and tag — but only commit if pubspec.yaml actually
  // differs from HEAD. It won't if: the given version matches what was
  // already there (a no-op bump), or no version was given and it was
  // already committed separately (e.g. hand-edited and committed earlier,
  // now just tagging it). `git commit` would otherwise fail with "nothing
  // to commit" — check for that ourselves, so it's a normal path instead
  // of an error.
  final pubspecDiff = _run(
    'git',
    ['-C', repoRoot, 'status', '--porcelain', '--', 'pubspec.yaml'],
    repoRoot,
    quiet: true,
  );
  if (pubspecDiff.stdout.toString().trim().isEmpty) {
    print('\npubspec.yaml already has version $version at HEAD — nothing to '
        'commit, tagging HEAD directly.');
  } else {
    print('\nCommitting release...');
    _run('git', ['-C', repoRoot, 'add', 'pubspec.yaml'], repoRoot);
    _run('git', ['-C', repoRoot, 'commit', '-m', 'chore: release $tag'], repoRoot);
  }
  print('\nTagging $tag...');
  _run('git', ['-C', repoRoot, 'tag', '-a', tag, '-m', 'Release $tag'], repoRoot);
  print('Tagged $tag locally.');

  // 14. Ask to push.
  stdout.write('\nPush "$branch" and tag $tag to origin now? (y/N): ');
  final answer = stdin.readLineSync()?.trim().toLowerCase();

  if (answer == 'y' || answer == 'yes') {
    print('Pushing...');
    // Push the branch and this tag by name — not `--tags`, which pushes
    // every local tag not yet on the remote (stray/experimental tags
    // included, not just the one this release just made).
    _run('git', ['-C', repoRoot, 'push', 'origin', branch, tag], repoRoot);
    print('Pushed.');
  } else {
    print('Not pushed. Push manually with:');
    print('  git -C "$repoRoot" push origin $branch $tag');
  }

  print('');
  print('Commit SHA for consuming apps\' pubspec.yaml ref: (if still pinning by SHA):');
  print('  git -C "$repoRoot" rev-parse $tag');
}

/// Runs [command], printing its output unless [quiet]. On a non-zero exit
/// code, prints the step's own output (even if [quiet]) so a raw git
/// failure is traceable — which command, in which step, with git's own
/// message — then exits with the same code, unless [allowFailure].
ProcessResult _run(
  String command,
  List<String> args,
  String workingDir, {
  bool quiet = false,
  bool allowFailure = false,
}) {
  final result = Process.runSync(command, args, workingDirectory: workingDir);
  if (!quiet) {
    stdout.write(result.stdout);
    stderr.write(result.stderr);
  }
  if (result.exitCode != 0 && !allowFailure) {
    if (quiet) {
      stdout.write(result.stdout);
      stderr.write(result.stderr);
    }
    stderr.writeln('Error: `$command ${args.join(' ')}` failed (exit ${result.exitCode}) — '
        'see its output above for the diagnosis.');
    exit(result.exitCode);
  }
  return result;
}
