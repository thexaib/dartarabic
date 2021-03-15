import 'package:test/test.dart';
import 'package:dartarabic/dartarabic.dart';

void main() {
  test('Strip Harakat', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربيّة";
    expect(DartArabic.stripHarakat(test), fixture);
    expect(DartArabic.stripHarakat(test), isNot(equals(test)));
  });
  test('Strip Tashkeel', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(DartArabic.stripTashkeel(test), fixture);
    expect(DartArabic.stripTashkeel(test), isNot(equals(test)));
  });
  test('Strip Diacritic', () {
    String test = "الْعَرَبِيَّةُ";
    String fixture = "العربية";
    expect(DartArabic.stripDiacritics(test), fixture);
    expect(DartArabic.stripDiacritics(test), isNot(equals(test)));
  });
  test('Strip Tatweel', () {
    String test = "العـــــربية";
    String fixture = "العربية";
    expect(DartArabic.stripTatweel(test), fixture);
    expect(DartArabic.stripTatweel(test), isNot(equals(test)));
  });


}
