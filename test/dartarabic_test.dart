import 'package:test/test.dart';
import 'package:dartarabic/dartarabic.dart';

void main() {
  test('Strip Harakat', () {
    String test = "الْعَرَبِيَّةُ";
    String truth = "العربيّة";
    expect(DartArabic.stripHarakat(test), truth);
    expect(DartArabic.stripHarakat(test), isNot(equals(test)));
  });
  test('Strip Tashkeel', () {
    String test = "الْعَرَبِيَّةُ";
    String truth = "العربية";
    expect(DartArabic.stripTashkeel(test), truth);
    expect(DartArabic.stripTashkeel(test), isNot(equals(test)));
  });
  test('Strip Diacritic', () {
    String test = "الْعَرَبِيَّةُ";
    String truth = "العربية";
    expect(DartArabic.stripDiacritics(test), truth);
    expect(DartArabic.stripDiacritics(test), isNot(equals(test)));
  });
  test('Strip Tatweel', () {
    String test = "العـــــربية";
    String truth = "العربية";
    expect(DartArabic.stripTatweel(test), truth);
    expect(DartArabic.stripTatweel(test), isNot(equals(test)));
  });

  test('Strip Shadda', () {
    String test = "الشّمسيّة";
    String truth = "الشمسية";
    expect(DartArabic.stripShadda(test), truth);
    expect(DartArabic.stripShadda(test), isNot(equals(test)));
  });
}
