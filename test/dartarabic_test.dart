import 'package:dartarabic/operations.dart';
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
    expect(DartArabic.normalizeHamza(test), truth);
    expect(DartArabic.normalizeHamza(test), isNot(equals(test)));
  });

  test('Normalize Hamza Tasheel', () {
    String test = "جاء سؤال الأئمة عن الإسلام آجلا";
    String truth = "جاء سوال الايمة عن الاسلام اجلا";
    expect(DartArabic.normalizeHamza(test,method: ArOp.METHOD_TASHEEL), truth);
    expect(DartArabic.normalizeHamza(test,method: ArOp.METHOD_TASHEEL), isNot(equals(test)));
  });



}
