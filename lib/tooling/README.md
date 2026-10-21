# lib/tooling — script helpers

Small, dependency-free helpers for writing project scripts in Dart instead of
shell/Python, so one script runs the same on macOS, Linux and Windows. This is
**dev-only code, not app code**: it is not exported by `bookie_buddy_shared.dart`,
and `scripts/check_core_purity.dart` fails if `lib/core/`, `lib/ui/` or the barrel
import it, or if anything here imports more than `dart:` libraries and its own
files. Import it directly:

```dart
import 'package:bookie_buddy_shared/tooling/tooling.dart';
```

## Rules

- **Scripts import only the tooling** — preferably the barrel,
  `package:bookie_buddy_shared/tooling/tooling.dart`, which has everything
  (any single file under `tooling/` can be imported too). No `dart:io`, no other
  packages. If a script needs something the tooling lacks
  (file access, a process call, a string helper), add it here instead. This is
  enforced for `scripts/` and `example/` by `scripts/check_core_purity.dart`; keep
  an app's `tool/` scripts to the same rule.
- **The tooling itself imports only `dart:` libraries and its own files** — no
  packages, so it never needs a dependency to run.

## Try it

`dart run example/tooling_demo.dart` (from the repo root) lists demo commands
that show every helper and its colored output — simulated builds, real quick
commands, prompts and a failure. `all` runs the non-interactive ones in a few
seconds; try it with `NO_COLOR=1` too.

## Files

| File | What it holds |
| --- | --- |
| `tooling.dart` | Barrel — exports everything below. |
| `script_context.dart` | `ScriptContext` (the toolbox) and `ScriptFailure`. |
| `script_runner.dart` | `ScriptCommand`, `runScript`, `runCommand`, `ScriptRunner` (entry points). |
| `flutter_tooling.dart` | `FlutterTooling` — Flutter-specific helpers. |
| `extensions.dart` | String / `ProcessResult` extensions for common script chores. |
| `ansi.dart` | Terminal colors as a `String` extension. |

### `script_context.dart`

`ScriptContext` is passed to every script. It knows the project root and wraps
the things scripts always need.

| Member | Use |
| --- | --- |
| `root`, `path('a/b')` | Project root and paths inside it. The root is the nearest folder at or above the current directory with a `pubspec.yaml`, so scripts work from any subfolder. Pass `ScriptContext(root: dir)` to override. |
| `ScriptContext.forScriptRoot()` | Root = the project containing the running script (nearest `pubspec.yaml` above the script file), independent of the current directory. Use for scripts that act on their own repo (release, checks). |
| `info`, `step`, `success`, `warn`, `error` | Print: plain / cyan bold heading after a blank line / green `✓` / yellow `Warning:` to stderr / red to stderr. |
| `exists`, `read`, `write`, `copy`, `dartFiles` | File helpers on root-relative paths: existence check, read/write/copy a text file, list `.dart` files under a folder. Scripts need no `dart:io` import. |
| `fail(message, {exitCode})` | Abort the script. Throws `ScriptFailure`; never call `exit()`. |
| `run(exe, args)` | Run a command with its output streamed to the terminal; fails the script on a non-zero exit. Use for long, visible steps (builds, tests). |
| `capture(exe, args)` | Run quietly, return trimmed stdout; fails on non-zero exit. Use for values (`git rev-parse ...`). |
| `exec(exe, args)` | Run quietly, return the raw `ProcessResult` whatever the exit code. Use when failure is expected and handled. |
| `commandExists(exe)` | Whether `exe --version` works (e.g. is `fvm` installed). |
| `prompt(question)`, `confirm(question)` | Read a line (empty at EOF) / ask yes-no (default no). |
| `pathLink(path)` | A file/folder as its absolute path, clickable in terminals with hyperlink support (also works for paths with spaces). Use it inside any output call: `context.success(context.pathLink(apk))`. |
| `pubspecVersion()` | The `version:` in `pubspec.yaml` (e.g. `2.18.0+69`), or null. |
| `requireProjectRoot()` | Fail unless a `pubspec.yaml` was found. |

http(s) URLs in any `info`/`step`/`success`/`warn`/`error` message are made
clickable automatically.

A command that can't be started (e.g. `git` not installed) fails the script with a
clear message, and `runScript` reports any other exception as `Error: ...`
without a stack trace. Commands run directly on macOS/Linux and through a shell on Windows (needed for
`.bat`/`.cmd` tools such as `fvm`).

### `script_runner.dart`

Four building blocks for a script's entry point; pick per situation.

- **`runScript(body)`** — a plain script. Builds the `ScriptContext`, runs your
  body, and turns a `ScriptFailure` into `Error: ...` on stderr plus the exit
  code. Used by `scripts/release.dart` and `scripts/check_core_purity.dart`.
- **`ScriptCommand`** — one reusable unit of work (`name`, `description`,
  optional `usage`, and `run(context, args)`). Write the logic once as a command.
- **`runCommand(command, args)`** — a standalone script for one command.
- **`ScriptRunner(executable:, commands:)`** — one script, many commands:
  `dart run tool/build.dart <command> [args]`. No arguments (or `help`) prints the
  command list; an unknown command prints it to stderr and exits 64.

The same `ScriptCommand` can be used by both a standalone script and a
`ScriptRunner`.

### `flutter_tooling.dart`

`FlutterTooling(context)`:

| Member | Use |
| --- | --- |
| `flutterCommand()` / `flutter(args)` | Runs `fvm flutter ...` if fvm is installed, else `flutter ...`. |
| `pubspecVersion()` | Like the context's, but fails the script if there is no version. |
| `versionTag()` | File-name-safe version without the build number: `v2_18_0`. |
| `buildArm64Apk(fileName:, extraArgs:)` | `flutter build apk --release --split-per-abi`, then copies `app-arm64-v8a-release.apk` to `build/app/outputs/flutter-apk/<fileName>` and returns its path. |

### `extensions.dart`

| Member | Use |
| --- | --- |
| `String.nonEmptyLines` | Non-blank, trimmed lines (e.g. of `git tag --list` output). |
| `String.withoutPrefix('v')` | Drop a leading prefix if present. |
| `String.isSemver`, `a.compareSemver(b)` | Plain `X.Y.Z` check and numeric (not lexical) comparison. |
| `ProcessResult.succeeded`, `.output` | Exit code is 0 / trimmed stdout, for a command run with `exec`. |

### `ansi.dart`

`'text'.green` / `.red` / `.yellow` / `.cyan` / `.bold` / `.dim` (chainable:
`'Error'.red.bold`), and `'text'.link(url)` for a clickable hyperlink (OSC 8:
VS Code, iTerm2, Windows Terminal, kitty; other terminals show plain text). `ScriptContext` and `runScript` already color their output;
use these for your own strings. Colors are on only when stdout and stderr are
terminals, so piped or logged output stays plain. `NO_COLOR=1` forces them off,
`FORCE_COLOR=1` forces them on (e.g. CI logs that render colors).

## How it fits together

```text
tool/build_internal_apk.dart ──► runCommand(InternalApkBuildCommand, args)
tool/build.dart              ──► ScriptRunner(commands: [InternalApkBuildCommand, ...])
                                      │
                       ScriptCommand.run(context, args)
                                      │
              ScriptContext (run/capture/exec/fail)  +  FlutterTooling
```

`runScript` creates the `ScriptContext` and is the only place failures are
turned into an exit code.

## Writing a new script

In the app repo (e.g. `tool/commands/patch_build_command.dart`):

```dart
class PatchBuildCommand extends ScriptCommand {
  @override String get name => 'patch';
  @override String get description => 'Build a patch release';

  @override
  Future<void> run(ScriptContext context, List<String> args) async {
    final flutter = FlutterTooling(context);
    await flutter.flutter(['build', 'apk', '--release']);
    context.success('Done');
  }
}
```

Then either register it in `tool/build.dart` (`commands: [..., PatchBuildCommand()]`),
or give it a standalone file:

```dart
Future<void> main(List<String> args) => runCommand(PatchBuildCommand(), args);
```

Run scripts with `dart run tool/<file>.dart`. Put Flutter- or app-specific
steps in the app repo's command; only generic helpers belong here. Keep this
folder free of imports other than `dart:` libraries.
