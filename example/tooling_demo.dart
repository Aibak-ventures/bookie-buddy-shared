// Playground for lib/tooling: shows every helper and what its output looks
// like. Builds are simulated (short delays), so nothing is compiled.
//
// Usage (from the repo root):
//   dart run example/tooling_demo.dart            # list the commands
//   dart run example/tooling_demo.dart all        # everything, no prompts
//   dart run example/tooling_demo.dart colors
//
// Output is colored when run in a terminal. Try:
//   NO_COLOR=1 dart run example/tooling_demo.dart all      # plain
//   FORCE_COLOR=1 dart run example/tooling_demo.dart all | cat   # colored, piped
import 'package:bookie_buddy_shared/tooling/tooling.dart';

Future<void> main(List<String> args) {
  // `all` runs the demos that need no input and don't fail on purpose.
  final automatic = <ScriptCommand>[
    ColorsDemo(),
    BuildDemo(),
    CommandsDemo(),
    FilesDemo(),
    ExtensionsDemo(),
  ];
  return ScriptRunner(
    executable: 'dart run example/tooling_demo.dart',
    commands: [...automatic, PromptDemo(), FailDemo(), AllDemo(automatic)],
  ).run(args);
}

/// Pause so simulated work feels like work, without the wait.
Future<void> _work([int ms = 350]) =>
    Future<void>.delayed(Duration(milliseconds: ms));

/// Every output method on [ScriptContext], and every [AnsiString] style.
class ColorsDemo extends ScriptCommand {
  @override
  String get name => 'colors';

  @override
  String get description => 'Every output method, color style and link';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context
      ..step('ScriptContext output methods')
      ..info('info()     plain text')
      ..step('step()     a section heading')
      ..success('success()  something worked')
      ..warn('warn()     something looks off (stderr)')
      ..error('error()    something is wrong (stderr)');

    context.step('AnsiString styles (for your own text)');
    context
      ..info('red     ${'.red'.red}')
      ..info('green   ${'.green'.green}')
      ..info('yellow  ${'.yellow'.yellow}')
      ..info('cyan    ${'.cyan'.cyan}')
      ..info('bold    ${'.bold'.bold}')
      ..info('dim     ${'.dim'.dim}')
      ..info('chained ${'.red.bold'.red.bold}  ${'.green.dim'.green.dim}')
      ..info(
        'mixed   ${'Build'.bold} ${'passed'.green} in ${'12s'.cyan}, ${'2 warnings'.yellow}',
      );

    context
      ..step('Clickable links (terminals that support hyperlinks)')
      ..info('pathLink() a file:    ${context.pathLink('pubspec.yaml')}')
      ..info('pathLink() a folder:  ${context.pathLink('lib/tooling')}')
      ..info('URLs in any message:  see https://dart.dev/get-started')
      ..info(
        '.link() on any text:  ${'click here'.cyan.link('https://pub.dev')}',
      );
  }
}

/// A simulated two-flavor APK build, shaped like the real build scripts.
class BuildDemo extends ScriptCommand {
  @override
  String get name => 'build';

  @override
  String get description => 'Simulated dev + prod APK build';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context.info('Version: v1_2_3');
    final built = <String>[];
    for (final flavor in ['dev', 'prod']) {
      context.step('Building ${flavor.toUpperCase()} APK...');
      for (final task in [
        'Running Gradle task assembleRelease',
        'Compiling Dart to native code',
        'Splitting per ABI',
      ]) {
        await _work();
        context.info('  $task'.dim);
      }
      await _work();
      context.info('✓ Built app-arm64-v8a-release.apk (54.5MB)'.green);
      built.add('build/app/outputs/flutter-apk/v1_2_3-$flavor.apk');
    }
    context.step('Done.');
    built.forEach(context.success);
  }
}

/// Real (instant) process calls: run, capture, exec, commandExists.
class CommandsDemo extends ScriptCommand {
  @override
  String get name => 'commands';

  @override
  String get description =>
      'run / capture / exec / commandExists on real commands';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context.step('run() — streams output, fails the script on error');
    await context.run('dart', ['--version']);

    context.step('capture() — returns trimmed stdout');
    final sha = await context.capture('git', ['rev-parse', '--short', 'HEAD']);
    context.info('current commit: ${sha.cyan}');

    context.step('exec() — raw result, you decide what failure means');
    final ok = await context.exec('git', [
      'rev-parse',
      '--is-inside-work-tree',
    ]);
    context.info(
      'inside a repo? ${ok.succeeded ? 'yes'.green : 'no'.red}  (output: "${ok.output}")',
    );
    final bad = await context.exec('git', ['rev-parse', 'no-such-ref']);
    context.info(
      'bad ref succeeded? ${bad.succeeded ? 'yes'.green : 'no'.red}  (exit ${bad.exitCode})',
    );

    context.step('commandExists()');
    for (final exe in ['dart', 'git', 'definitely-not-installed']) {
      final found = await context.commandExists(exe);
      context.info(
        '${exe.padRight(26)}${found ? 'found'.green : 'missing'.red}',
      );
    }
  }
}

/// ScriptContext file helpers and FlutterTooling's pubspec reading.
class FilesDemo extends ScriptCommand {
  @override
  String get name => 'files';

  @override
  String get description =>
      'exists / read / dartFiles / FlutterTooling version';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context
      ..step('Project root')
      ..info('root: ${context.root.path}')
      ..info('path(\'lib\'): ${context.path('lib')}');

    context.step('exists()');
    for (final p in ['pubspec.yaml', 'lib/tooling', 'nope.txt']) {
      context.info(
        '${p.padRight(16)}${context.exists(p) ? 'exists'.green : 'missing'.red}',
      );
    }

    context.step('dartFiles() — .dart files under a folder');
    context.dartFiles('lib/tooling').forEach(context.info);

    context.step('FlutterTooling');
    final flutter = FlutterTooling(context);
    context
      ..info('pubspecVersion(): ${flutter.pubspecVersion().cyan}')
      ..info('versionTag():     ${flutter.versionTag().cyan}')
      ..info(
        'flutter command:  ${(await flutter.flutterCommand()).join(' ').cyan}',
      );
  }
}

/// The String / ProcessResult extensions.
class ExtensionsDemo extends ScriptCommand {
  @override
  String get name => 'extensions';

  @override
  String get description => 'nonEmptyLines / withoutPrefix / semver helpers';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context
      ..step('nonEmptyLines')
      ..info(
        '"  v1.0.0 \\n\\n v1.1.0\\n".nonEmptyLines = ${'  v1.0.0 \n\n v1.1.0\n'.nonEmptyLines}',
      )
      ..step('withoutPrefix')
      ..info('"v1.2.3".withoutPrefix("v") = ${'v1.2.3'.withoutPrefix('v')}')
      ..info('"1.2.3".withoutPrefix("v")  = ${'1.2.3'.withoutPrefix('v')}')
      ..step('isSemver / compareSemver');
    for (final v in ['1.2.3', 'v1.2.3', '1.2', '10.0.0']) {
      context.info(
        '"$v".isSemver = ${v.isSemver ? 'true'.green : 'false'.red}',
      );
    }
    for (final (a, b) in [
      ('10.0.0', '2.0.0'),
      ('1.2.3', '1.2.3'),
      ('1.9.0', '1.10.0'),
    ]) {
      final c = a.compareSemver(b);
      context.info(
        '$a vs $b → ${c > 0
            ? 'newer'.green
            : c < 0
            ? 'older'.yellow
            : 'same'.cyan}',
      );
    }
  }
}

/// Interactive: prompt() and confirm().
class PromptDemo extends ScriptCommand {
  @override
  String get name => 'prompt';

  @override
  String get description => 'Interactive prompt() and confirm()';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context.step('prompt() and confirm()');
    final name = context.prompt('Your name (blank to skip): ');
    context.info(name.isEmpty ? 'No name given.'.dim : 'Hello, ${name.bold}!');
    final yes = context.confirm('Continue?');
    context.info(yes ? 'You said yes'.green : 'You said no'.yellow);
  }
}

/// Failure path: fail() → red "Error:" and a non-zero exit code.
class FailDemo extends ScriptCommand {
  @override
  String get name => 'fail';

  @override
  String get description =>
      'Abort with fail() — shows the error output and exit code';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    context.step('About to fail on purpose...');
    await _work();
    context.fail(
      'Something went wrong.\nCause: this is a demo.\nFix: nothing — run another command.',
      exitCode: 3,
    );
  }
}

/// Runs the non-interactive, non-failing demos back to back.
class AllDemo extends ScriptCommand {
  AllDemo(this._demos);

  final List<ScriptCommand> _demos;

  @override
  String get name => 'all';

  @override
  String get description => 'Run colors, build, commands, files, extensions';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    for (final demo in _demos) {
      context.info('\n${'━━━ ${demo.name} ━━━'.bold.cyan}');
      await demo.run(context, const []);
    }
  }
}
