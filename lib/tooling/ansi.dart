import 'dart:io';

/// Whether to emit ANSI colors. `NO_COLOR` turns them off and `FORCE_COLOR`
/// turns them on (e.g. CI logs that render colors); otherwise they're on only
/// when both stdout and stderr are terminals that support them, so piped or
/// logged output stays plain.
final bool _colorEnabled = _detectColor();

bool _detectColor() {
  final env = Platform.environment;
  // Per no-color.org, NO_COLOR counts when non-empty; FORCE_COLOR=0/false
  // means off.
  if (env['NO_COLOR']?.isNotEmpty ?? false) return false;
  final force = env['FORCE_COLOR'];
  if (force != null && force.isNotEmpty) {
    return force != '0' && force != 'false';
  }
  return stdout.hasTerminal &&
      stdout.supportsAnsiEscapes &&
      stderr.hasTerminal &&
      stderr.supportsAnsiEscapes;
}

/// Terminal styling for strings: `'done'.green`, `'Error'.red.bold`. Returns
/// the string unchanged when colors are off.
extension AnsiString on String {
  String get red => _style('31');
  String get green => _style('32');
  String get yellow => _style('33');
  String get cyan => _style('36');
  String get bold => _style('1');
  String get dim => _style('2');

  /// Makes this text a clickable terminal hyperlink to [url] (OSC 8), in
  /// terminals that support it (VS Code, iTerm2, Windows Terminal, kitty);
  /// others show the plain text. Unchanged when colors are off.
  String link(String url) =>
      _colorEnabled ? '\x1B]8;;$url\x1B\\$this\x1B]8;;\x1B\\' : this;

  String _style(String code) =>
      _colorEnabled ? '\x1B[${code}m$this\x1B[0m' : this;
}
