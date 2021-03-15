library dartarabic;

import 'package:dartarabic/operations.dart';

abstract class DartArabic {
  static String stripHarakat(String text) => ArOp.strip_harakat(text);
  static String stripTashkeel(String text) => ArOp.strip_tashkeel(text);
  static String stripDiacritics(String text) => ArOp.strip_diacritics(text);
  static String stripTatweel(String text) => ArOp.strip_tatweel(text);
  static String stripShadda(String text) => ArOp.strip_shadda(text);
  static String normalizeLigature(String text) => ArOp.normalize_ligature(text);
  static String normalizeHamza(String text,{String method=ArOp.METHOD_UNIFORM}) => ArOp.normalize_hamza(text,method: method);
  static String normalizeAlef(String text) => ArOp.normalize_alef(text);
}
