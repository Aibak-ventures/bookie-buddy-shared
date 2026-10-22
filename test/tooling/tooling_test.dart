import 'dart:io';

import 'package:bookie_buddy_shared/tooling/tooling.dart';
import 'package:test/test.dart';

class _Command extends ScriptCommand {
  _Command(this.name, [this.onRun]);

  @override
  final String name;

  @override
  String get description => 'test command';

  final Future<void> Function(ScriptContext context, List<String> args)? onRun;

  @override
  Future<void> run(ScriptContext context, List<String> args) async =>
      onRun?.call(context, args);
}

void main() {
  gitToolingTests();

  group('ScriptString', () {
    test('nonEmptyLines trims and drops blank lines', () {
      expect(' a \n\n b\n'.nonEmptyLines, ['a', 'b']);
    });

    test('withoutPrefix', () {
      expect('v1.2.3'.withoutPrefix('v'), '1.2.3');
      expect('1.2.3'.withoutPrefix('v'), '1.2.3');
    });

    test('isSemver accepts only plain X.Y.Z', () {
      expect('1.2.3'.isSemver, isTrue);
      for (final bad in ['v1.2.3', '1.2', '1.2.3+4', '1.2.3-beta', '']) {
        expect(bad.isSemver, isFalse, reason: bad);
      }
    });

    test('compareSemver is numeric, not lexical', () {
      expect('10.0.0'.compareSemver('2.0.0'), greaterThan(0));
      expect('1.9.0'.compareSemver('1.10.0'), lessThan(0));
      expect('1.2.3'.compareSemver('1.2.3'), 0);
    });
  });

  group('ScriptProcessResult', () {
    test('succeeded follows the result\'s own exit code', () {
      expect(ProcessResult(1, 0, 'out\n', '').succeeded, isTrue);
      expect(ProcessResult(1, 128, '', '').succeeded, isFalse);
    });

    test('output is the trimmed stdout', () {
      expect(ProcessResult(1, 0, ' out \n', '').output, 'out');
    });
  });

  group('ScriptContext', () {
    late Directory dir;
    late ScriptContext context;

    setUp(() {
      dir = Directory.systemTemp.createTempSync('tooling_test');
      context = ScriptContext(root: dir);
    });

    tearDown(() => dir.deleteSync(recursive: true));

    test('pubspecVersion reads the top-level version', () {
      context.write('pubspec.yaml', 'name: x\nversion: 2.18.0+69 # note\n');
      expect(context.pubspecVersion(), '2.18.0+69');
      expect(FlutterTooling(context).versionTag(), 'v2_18_0');
    });

    test('pubspecVersion is null without a version', () {
      context.write('pubspec.yaml', 'name: x\n');
      expect(context.pubspecVersion(), isNull);
    });

    test('dartFiles lists relative paths; a missing folder is empty', () {
      Directory('${dir.path}/lib/a').createSync(recursive: true);
      context
        ..write('lib/a/one.dart', '')
        ..write('lib/two.dart', '')
        ..write('lib/notes.txt', '');
      expect(context.dartFiles('lib')..sort(), [
        'lib/a/one.dart',
        'lib/two.dart',
      ]);
      expect(context.dartFiles('lib/two.dart'), ['lib/two.dart']);
      expect(context.dartFiles('nope'), isEmpty);
    });

    test('a command that cannot start fails with a clear message', () {
      expect(
        () => context.exec('definitely-not-installed-xyz', []),
        throwsA(
          isA<ScriptFailure>().having(
            (e) => e.message,
            'message',
            contains('PATH'),
          ),
        ),
      );
    });

    test('capture fails on a non-zero exit code', () async {
      await expectLater(
        context.capture('dart', ['--no-such-flag']),
        throwsA(isA<ScriptFailure>()),
      );
    });
  });

  group('ScriptRunner', () {
    final savedExitCode = exitCode;
    tearDown(() => exitCode = savedExitCode);

    test('dispatches to the named command with the remaining args', () async {
      List<String>? received;
      await ScriptRunner(
        executable: 'x',
        commands: [_Command('go', (_, args) async => received = args)],
      ).run(['go', 'a', 'b']);
      expect(received, ['a', 'b']);
    });

    test('an unknown command sets exit code 64', () async {
      await ScriptRunner(
        executable: 'x',
        commands: [_Command('go')],
      ).run(['nope']);
      expect(exitCode, 64);
    });

    test('a ScriptFailure sets the exit code instead of throwing', () async {
      await ScriptRunner(
        executable: 'x',
        commands: [_Command('go', (c, _) async => c.fail('boom', exitCode: 3))],
      ).run(['go']);
      expect(exitCode, 3);
    });

    test('duplicate command names are rejected', () {
      expect(
        () => ScriptRunner(
          executable: 'x',
          commands: [_Command('a'), _Command('a')],
        ),
        throwsArgumentError,
      );
    });

    test('--help after a command does not run it', () async {
      var ran = false;
      await ScriptRunner(
        executable: 'x',
        commands: [_Command('go', (_, _) async => ran = true)],
      ).run(['go', '--help']);
      expect(ran, isFalse);
    });
  });
}

void gitToolingTests() {
  group('GitTooling', () {
    late Directory dir;
    late ScriptContext context;
    late GitTooling git;

    Future<void> g(List<String> args) => context.capture('git', [
      '-c',
      'user.name=t',
      '-c',
      'user.email=t@t',
      ...args,
    ]);

    setUp(() async {
      dir = Directory.systemTemp.createTempSync('git_tooling_test');
      context = ScriptContext(root: dir);
      git = GitTooling(context);
      await g(['init', '-q', '-b', 'main']);
      context.write('pubspec.yaml', 'name: x\nversion: 1.0.0\n');
      await g(['add', '.']);
      await g(['commit', '-q', '-m', 'init']);
    });

    tearDown(() => dir.deleteSync(recursive: true));

    test('isInsideRepo and currentBranch', () async {
      expect(await git.isInsideRepo(), isTrue);
      expect(await git.currentBranch(), 'main');
      final outside = Directory.systemTemp.createTempSync('not_a_repo');
      addTearDown(() => outside.deleteSync(recursive: true));
      expect(
        await GitTooling(ScriptContext(root: outside)).isInsideRepo(),
        isFalse,
      );
    });

    test('currentBranch is null on a detached HEAD', () async {
      await g(['checkout', '-q', '--detach']);
      expect(await git.currentBranch(), isNull);
    });

    test('dirtyFiles can exclude a path, precisely', () async {
      expect(await git.dirtyFiles(), isEmpty);
      context.write('pubspec.yaml', 'name: x\nversion: 1.1.0\n');
      Directory('${dir.path}/example').createSync();
      context.write('example/pubspec.yaml', 'name: y\n');
      expect(await git.hasChanges('pubspec.yaml'), isTrue);
      final dirty = await git.dirtyFiles(except: ['pubspec.yaml']);
      expect(dirty, hasLength(1));
      expect(dirty.single, endsWith('example/'));
    });

    test('latestVersionTag compares numerically; tagExists is exact', () async {
      expect(await git.latestVersionTag(), isNull);
      for (final t in ['v1.9.0', 'v1.10.0', 'v2.0.0-beta', 'nightly']) {
        await g(['tag', t]);
      }
      expect(await git.latestVersionTag(), 'v1.10.0');
      expect(await git.tagExists('v1.9.0'), isTrue);
      expect(await git.tagExists('v1.9'), isFalse);
    });

    test('commit and tag create a commit and an annotated tag', () async {
      context.write('pubspec.yaml', 'name: x\nversion: 1.1.0\n');
      await git.git(['config', 'user.name', 't']);
      await git.git(['config', 'user.email', 't@t']);
      await git.commit('chore: release v1.1.0', paths: ['pubspec.yaml']);
      await git.tag('v1.1.0', message: 'Release v1.1.0');
      expect(
        await git.git(['log', '-1', '--format=%s']),
        'chore: release v1.1.0',
      );
      expect(await git.git(['cat-file', '-t', 'v1.1.0']), 'tag');
      expect(await git.latestVersionTag(), 'v1.1.0');
      expect(await git.hasChanges('pubspec.yaml'), isFalse);
    });

    test('remoteTagExists is null without a reachable remote', () async {
      expect(await git.remoteTagExists('v1.0.0'), isNull);
    });
  });
}
