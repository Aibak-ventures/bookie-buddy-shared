import 'package:bookie_buddy_shared/core/utils/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('getInitialLetters', () {
    test('uses the first and last word', () {
      expect('John Doe'.getInitialLetters, 'JD');
      expect('john michael doe'.getInitialLetters, 'JD');
      expect('afnan'.getInitialLetters, 'A');
    });

    test('is empty for blank input', () {
      expect(''.getInitialLetters, '');
      expect('   '.getInitialLetters, '');
    });

    test('never splits a surrogate pair (emoji, astral characters)', () {
      expect('😀'.getInitialLetters, '😀');
      expect('😀 Doe'.getInitialLetters, '😀D');
      expect('𝒜lice'.getInitialLetters.runes.length, 1);
      // Each result must be a well-formed string.
      for (final s in ['😀', '😀 😀', '𝒜 𝒷']) {
        expect(() => Uri.encodeComponent(s.getInitialLetters), returnsNormally);
      }
    });
  });
}
