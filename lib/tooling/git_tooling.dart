import 'extensions.dart';
import 'script_context.dart';

/// Git helpers for scripts, run in the context's project root. Query methods
/// run quietly; actions stream git's output. Anything not covered: [git].
class GitTooling {
  GitTooling(this.context);

  final ScriptContext context;

  /// Runs `git [args]` quietly and returns its trimmed stdout; fails the
  /// script on a non-zero exit code.
  Future<String> git(List<String> args) => context.capture('git', args);

  /// Whether the project root is inside a git work tree.
  Future<bool> isInsideRepo() async => (await context.exec('git', [
    'rev-parse',
    '--is-inside-work-tree',
  ])).succeeded;

  /// The checked-out branch, or null on a detached HEAD.
  Future<String?> currentBranch() async {
    final branch = await git(['rev-parse', '--abbrev-ref', 'HEAD']);
    return branch == 'HEAD' ? null : branch;
  }

  /// Uncommitted changes as trimmed `git status --porcelain` lines (e.g.
  /// `M lib/a.dart`, `?? new.txt`), leaving out the files in [except]
  /// (paths relative to the root).
  Future<List<String>> dirtyFiles({List<String> except = const []}) async =>
      (await git([
        'status',
        '--porcelain',
        '--',
        for (final path in except) ':(exclude)$path',
      ])).nonEmptyLines;

  /// Whether [path] has uncommitted changes.
  Future<bool> hasChanges(String path) async =>
      (await git(['status', '--porcelain', '--', path])).isNotEmpty;

  /// Local tags matching [pattern] (a git glob, e.g. `v*`).
  Future<List<String>> tags([String pattern = '*']) async =>
      (await git(['tag', '--list', pattern])).nonEmptyLines;

  /// The highest `vX.Y.Z` tag by semver order (not lexical, so `v10.0.0` beats
  /// `v2.0.0`), or null if there are none.
  Future<String?> latestVersionTag() async {
    final versions = (await tags(
      'v*',
    )).where((t) => t.withoutPrefix('v').isSemver);
    if (versions.isEmpty) return null;
    return versions.reduce(
      (a, b) =>
          a.withoutPrefix('v').compareSemver(b.withoutPrefix('v')) >= 0 ? a : b,
    );
  }

  /// Whether [tag] exists locally.
  Future<bool> tagExists(String tag) async => (await tags(tag)).isNotEmpty;

  /// Whether [tag] exists on [remote], or null if the remote can't be reached
  /// (offline, no such remote) so the caller can decide how to treat that.
  Future<bool?> remoteTagExists(String tag, {String remote = 'origin'}) async {
    final result = await context.exec('git', [
      'ls-remote',
      '--tags',
      remote,
      'refs/tags/$tag',
    ]);
    return result.succeeded ? result.output.isNotEmpty : null;
  }

  /// Stages [paths] and commits them with [message].
  Future<void> commit(String message, {required List<String> paths}) async {
    await context.run('git', ['add', ...paths]);
    await context.run('git', ['commit', '-m', message]);
  }

  /// Creates an annotated tag at HEAD.
  Future<void> tag(String name, {required String message}) =>
      context.run('git', ['tag', '-a', name, '-m', message]);

  /// Pushes [branch] and [tag] by name — not `--tags`, which would also push
  /// every other local tag the remote doesn't have yet.
  Future<void> push(String branch, String tag, {String remote = 'origin'}) =>
      context.run('git', ['push', remote, branch, tag]);
}
