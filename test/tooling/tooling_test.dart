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
