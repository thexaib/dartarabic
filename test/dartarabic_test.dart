import 'package:test/test.dart';
import 'package:dartarabic/dartarabic.dart';

void main() {
  test('Remove Harakat', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربيّة";
    expect(DartArabic.removeHarakat(test), fixture);
    expect(DartArabic.removeHarakat(test), isNot(equals(test)));
  });
  test('Remove Tashkeel', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(DartArabic.removeTashkeel(test), fixture);
    expect(DartArabic.removeTashkeel(test), isNot(equals(test)));
  });
  test('Remove Diacritic', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(DartArabic.removeDiacritics(test), fixture);
    expect(DartArabic.removeDiacritics(test), isNot(equals(test)));
  });


}
