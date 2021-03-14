import 'package:flutter_test/flutter_test.dart';

import 'package:dartarabic/dartarabic.dart';

void main() {
  test('Remove Harakat', () {
    final parser = DartArabic();
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربيّة";
    expect(parser.removeHarakat(test), fixture);
    expect(parser.removeHarakat(test), isNot(equals(test)));
  });
  test('Remove Tashkeel', () {
    final parser = DartArabic();
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(parser.removeTashkeel(test), fixture);
    expect(parser.removeTashkeel(test), isNot(equals(test)));
  });
  test('Remove Diacritic', () {
    final parser = DartArabic();
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(parser.removeDiacritics(test), fixture);
    expect(parser.removeDiacritics(test), isNot(equals(test)));
  });


}
