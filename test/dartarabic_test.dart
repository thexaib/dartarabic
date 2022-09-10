import 'package:test/test.dart';
import 'package:dartarabic/src/dartarabic.dart';

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


  test('Normalize Ligature', () {
    String test = "ﻻنحالي ﻷﻹﻵ";
    String truth = "لانحالي لالالا";
    DartArabic.normalizeLigature(test);
    expect(DartArabic.normalizeLigature(test), truth);
    expect(DartArabic.normalizeLigature(test), isNot(equals(test)));
  });

  test('Normalize Hamza UNIFORM', () {
    String test = "جاء سؤال الأئمة عن الإسلام آجلا";
    String truth = "جاء سءال الءءمة عن الءسلام ءءجلا";
    expect(DartArabic.normalizeHamzaUniform(test), truth);
    expect(DartArabic.normalizeHamzaUniform(test), isNot(equals(test)));
  });

  test('Normalize Hamza Tasheel', () {
    String test = "جاء سؤال الأئمة عن الإسلام آجلا";
    String truth = "جاء سوال الايمة عن الاسلام اجلا";
    expect(DartArabic.normalizeHamzaTasheel(test), truth);
    expect(DartArabic.normalizeHamzaTasheel(test), isNot(equals(test)));
  });

  test('Normalize Alef', () {
    String test = "بِٱلْهُدَىٰ";
    String truth = "بِالْهُدَا";
    expect(DartArabic.normalizeAlef(test), truth);
    expect(DartArabic.normalizeAlef(test), isNot(equals(test)));
  });

test('Normalize Letters', () {
    String test = "ﻫﻞ";
    String truth = "هل";
    expect(DartArabic.normalizeLetters(test), truth);
    expect(DartArabic.normalizeLetters(test), isNot(equals(test)));
  });

  test('Strip Diacritics', () {
    String test = "الرّحمٰن";
    String truth = "الرحمن";
    final result = DartArabic.stripDiacritics(test);
    expect(result, truth);
    expect(result, isNot(equals(test)));
  });

}
