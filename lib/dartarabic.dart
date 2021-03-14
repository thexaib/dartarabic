library dartarabic;

import 'package:dartarabic/constants.dart';
import 'package:dartarabic/operations.dart';

/// A Calculator.
class DartArabic {
  /// Returns [value] plus 1.
  String removeHarakat(String text) => ArOp.strip_harakat(text);
  String removeTashkeel(String text) => ArOp.strip_tashkeel(text);
  String removeDiacritics(String text) => ArOp.strip_diacritics(text);
}
