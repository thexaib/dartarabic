library dartarabic;

import 'package:dartarabic/operations.dart';

abstract class DartArabic {
  static String removeHarakat(String text) => ArOp.strip_harakat(text);
  static String removeTashkeel(String text) => ArOp.strip_tashkeel(text);
  static String removeDiacritics(String text) => ArOp.strip_diacritics(text);
}
