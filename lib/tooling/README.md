# lib/tooling — script helpers

Small, dependency-free helpers for writing project scripts in Dart instead of
shell/Python, so one script runs the same on macOS, Linux and Windows. This is
**dev-only code, not app code**: it is not exported by
`bookie_buddy_shared.dart`, nothing in `lib/core/` or `lib/ui/` may import it,
and it imports only `dart:` libraries and its own files. Import it directly:

```dart
import 'package:bookie_buddy_shared/tooling/tooling.dart';
```

## Rules

All three are enforced by `scripts/check_core_purity.dart` (run automatically
by `scripts/release.dart`).

- **Production code never imports the tooling.** `lib/core/`, `lib/ui/` and the
  main barrel must not import or export anything from `lib/tooling/`.
- **The tooling imports only `dart:` libraries and its own files** — no
  packages, no `dart:ui`, no `..` paths — so it never needs a dependency to run.
- **Scripts import only the tooling** (`scripts/`, `example/`; keep an app's
  `tool/` scripts to the same rule). Preferably the barrel, `tooling.dart`,
  which has everything; any single file under `tooling/` is fine too. No
  `dart:io`, no other packages, no `..` imports. If a script needs something the
  tooling lacks (file access, a process call, a string helper), add it here.

## Try it

`dart run example/tooling_demo.dart` (from the repo root) lists demo commands
that show every helper and its colored, clickable output: simulated builds,
real quick commands, git queries, prompts and a deliberate failure. `all` runs
the non-interactive ones in a few seconds; try it with `NO_COLOR=1` too.

## Tests

`test/tooling/tooling_test.dart` covers the extensions, `ScriptContext` file and
process helpers, `GitTooling` (against throwaway git repos) and `ScriptRunner`
dispatch. `scripts/release.dart` runs it with the rest of the suite.

## Files

| File | What it holds |
| --- | --- |
| `tooling.dart` | Barrel — exports everything below. |
| `script_context.dart` | `ScriptContext` (the toolbox) and `ScriptFailure`. |
| `script_runner.dart` | `ScriptCommand`, `runScript`, `runCommand`, `ScriptRunner` (entry points). |
| `flutter_tooling.dart` | `FlutterTooling` — Flutter-specific helpers. |
| `git_tooling.dart` | `GitTooling` — git queries and the commit/tag/push steps of a release. |
| `extensions.dart` | `String` and `ProcessResult` extensions for common script chores. |
| `ansi.dart` | Terminal colors and hyperlinks as a `String` extension. |

### `script_context.dart`

`ScriptContext` is passed to every script. It knows the project root and wraps
what scripts always need. `ScriptFailure(message, {exitCode})` is the exception
`fail` throws.

| Member | Use |
| --- | --- |
| `root`, `path('a/b')` | Project root, and `root/a/b`. By default the root is the nearest folder at or above the current directory with a `pubspec.yaml`, so scripts work from any subfolder. Pass `ScriptContext(root: dir)` to override. |
| `ScriptContext.forScriptRoot()` | Root = the project containing the running script (nearest `pubspec.yaml` above the script file), independent of the current directory. Use for scripts that act on their own repo (release, checks). |
| `info(msg)` | Plain line to stdout. |
| `step(msg)` | Heading: blank line, then cyan bold. |
| `success(msg)` | Green `✓ msg`. |
| `ok(msg)` | Green `msg`, without the `✓`. |
| `warn(msg)` | Yellow `Warning: msg` to stderr. |
| `error(msg)` | Red line to stderr (does not stop the script). |
| `fail(msg, {exitCode})` | Abort the script. Throws `ScriptFailure`; never call `exit()`. |
| `run(exe, args)` | Run a command with its output streamed to the terminal; fails the script on a non-zero exit. Use for long, visible steps (builds, tests). |
| `capture(exe, args)` | Run quietly, return trimmed stdout; on a non-zero exit, prints the command's stderr and fails the script. Use for values (`git rev-parse ...`). |
| `exec(exe, args)` | Run quietly, return the raw `ProcessResult` whatever the exit code. Use when failure is expected and handled. |
| `commandExists(exe)` | Whether `exe --version` works (e.g. is `fvm` installed). |
| `exists(path)`, `read(path)`, `write(path, text)`, `copy(from, to)` | File helpers on root-relative paths. Scripts need no `dart:io` import. |
| `dartFiles(path)` | Root-relative paths (always `/`-separated) of the `.dart` files under a folder, or the file itself; an empty list if the folder doesn't exist. |
| `pubspecVersion()` | The top-level `version:` in `pubspec.yaml` (e.g. `2.18.0+69`), or null. |
| `requireProjectRoot()` | Fail unless the root has a `pubspec.yaml`. |
| `prompt(question)`, `confirm(question)` | Read a line (empty at EOF) / ask yes-no (default no). |
| `pathLink(path)` | A file/folder as its absolute path, clickable in terminals with hyperlink support (also works for paths with spaces). Use it for a path inside a longer message. |

**Clickable output.** In any `info`/`step`/`success`/`ok`/`warn`/`error`
message, http(s) URLs are made clickable automatically (trailing punctuation
excluded), and so is a message that is exactly one existing absolute file or
folder path, e.g. `context.success(apkPath)`. A message that already carries a
hyperlink (from `pathLink` or `.link`) is left as is.

**Errors.** A command that can't be started (e.g. `git` not installed) fails the
script with a clear "could not start `x`" message instead of a stack trace.
Commands run directly on macOS/Linux and through a shell on Windows (needed for
`.bat`/`.cmd` tools such as `fvm`).

### `script_runner.dart`

Four building blocks for a script's entry point; pick per situation.

- **`runScript(body)`** — a plain script. Builds the `ScriptContext`, runs your
  body, and turns a `ScriptFailure` into `Error: ...` on stderr plus its exit
  code. Any other `Exception` (a missing file, a bad format) is reported the same
  way with exit code 1, without a stack trace. Used by `scripts/release.dart` and
  `scripts/check_core_purity.dart`.
- **`ScriptCommand`** — one reusable unit of work: `name`, `description`,
  optional `usage` (an arguments hint such as `[dev|prod|all]`), and
  `run(context, args)`. Write the logic once as a command.
- **`runCommand(command, args)`** — a standalone script for one command.
- **`ScriptRunner(executable:, commands:)`** — one script, many commands:
  `dart run tool/build.dart <command> [args]`. With no arguments (or `help`,
  `--help`) it lists the commands; `<command> --help` prints that command's usage
  and description without running it. An unknown command prints the list to
  stderr and exits 64. Two commands with the same name throw an `ArgumentError`.

The same `ScriptCommand` can be used by both a standalone script and a
`ScriptRunner`.

### `flutter_tooling.dart`

`FlutterTooling(context)`:

| Member | Use |
| --- | --- |
| `flutterCommand()` / `flutter(args)` | Runs `fvm flutter ...` if fvm is installed, else `flutter ...` (with a warning). |
| `pubspecVersion()` | Like the context's, but fails the script if there is no version. |
| `versionTag()` | File-name-safe version without the build number: `2.18.0+69` → `v2_18_0`. Builds that differ only in build number share a tag. |
| `buildArm64Apk(fileName:, extraArgs:)` | `flutter build apk --release --split-per-abi`, then copies `app-arm64-v8a-release.apk` to `build/app/outputs/flutter-apk/<fileName>` and returns the new path. |

### `git_tooling.dart`

`GitTooling(context)` runs git in the project root. Queries are quiet; actions
stream git's output.

| Member | Use |
| --- | --- |
| `isInsideRepo()`, `currentBranch()` | In a work tree? / branch name (null on a detached HEAD). |
| `dirtyFiles(except:)`, `hasChanges(path)` | Uncommitted changes as trimmed `--porcelain` lines (optionally excluding exact paths) / does one path have changes. |
| `tags([pattern])`, `tagExists(tag)` | Local tags. |
| `latestVersionTag()` | Highest `vX.Y.Z` tag by semver order, or null. |
| `remoteTagExists(tag)` | On `origin`? Null if the remote can't be reached, so you decide how to treat that. |
| `commit(message, paths:)`, `tag(name, message:)`, `push(branch, tag)` | Stage + commit, annotated tag, push by name (never `--tags`). |
| `git(args)` | Anything else: runs `git args` quietly and returns trimmed stdout. |

### `extensions.dart`

`ScriptString` (on `String`) and `ScriptProcessResult` (on `ProcessResult`):

| Member | Use |
| --- | --- |
| `String.nonEmptyLines` | Non-blank, trimmed lines (e.g. of `git tag --list` output). |
| `String.withoutPrefix('v')` | Drop a leading prefix if present. |
| `String.isSemver`, `a.compareSemver(b)` | Plain `X.Y.Z` check (no `v`, no `+build`) and numeric, not lexical, comparison. |
| `ProcessResult.succeeded`, `.output` | Exit code is 0 / trimmed stdout, for a command run with `exec`. |

### `ansi.dart`

`AnsiString`, an extension on `String`:

`'text'.green` / `.red` / `.yellow` / `.cyan` / `.bold` / `.dim` (chainable:
`'Error'.red.bold`), and `'text'.link(url)` for a clickable hyperlink (OSC 8:
VS Code, iTerm2, Windows Terminal, kitty; other terminals show plain text).
`ScriptContext` and `runScript` already style their output; use these for your
own strings.

Styling is on only when stdout and stderr are both terminals, so piped or logged
output stays plain. `NO_COLOR` (non-empty) forces it off and wins over
everything; `FORCE_COLOR` (anything but empty, `0` or `false`) forces it on, e.g.
for CI logs that render colors.

## How it fits together

```text
tool/build_internal_apk.dart ──► runCommand(InternalApkBuildCommand, args)
tool/build.dart              ──► ScriptRunner(commands: [InternalApkBuildCommand, ...])
                                      │
                       ScriptCommand.run(context, args)
                                      │
              ScriptContext (run/capture/exec/fail)  +  FlutterTooling / GitTooling
```

`runScript` creates the `ScriptContext` and turns failures into an error message
and exit code. `scripts/release.dart` is the larger worked example: it uses
`GitTooling` for every git step and `ScriptContext` for prompts and failures.

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
steps in the app repo's command; only generic helpers belong here.
