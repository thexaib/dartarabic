library dartarabic;

import 'package:dartarabic/operations.dart';

abstract class DartArabic {
  static String stripHarakat(String text) => ArOp.strip_harakat(text);
  static String stripTashkeel(String text) => ArOp.strip_tashkeel(text);
  static String stripDiacritics(String text) => ArOp.strip_diacritics(text);
  static String stripTatweel(String text) => ArOp.strip_tatweel(text);
  static String stripShadda(String text) => ArOp.strip_shadda(text);
}
