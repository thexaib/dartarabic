import 'operations.dart';

abstract class DartArabic {
  /// Strip Harakat from [text] arabic word except Shadda. The striped marks are : FATHA, DAMMA, KASRA,  FATHATAN, DAMMATAN, KASRATAN,SUKUN Marks,
  static String stripHarakat(String text) => ArOp.strip_harakat(text);

  /// Strip vowels from [text], include Shadda. The striped marks are : FATHA, DAMMA, KASRA, SUKUN, SHADDA, FATHATAN, DAMMATAN, KASRATAN
  static String stripTashkeel(String text) => ArOp.strip_tashkeel(text);

  /// Strip arabic diacritics from [text]. The striped marks are : Small Alef, Harakat + Shadda, Quranic marks, Extended arabic diacritics
  static String stripDiacritics(String text) => ArOp.strip_diacritics(text);

  /// Strip tatweel from [text] and return a result text.
  static String stripTatweel(String text) => ArOp.strip_tatweel(text);

  /// Strip Shadda from [text] and return a result text.
  static String stripShadda(String text) => ArOp.strip_shadda(text);

  /// Normalize Lam Alef ligatures into two letters (LAM and ALEF), and Tand return a result text.Some systems present lamAlef ligature as a single letter, this function convert it into two letters, The converted letters into  LAM and ALEF are  :  LAM_ALEF, LAM_ALEF_HAMZA_ABOVE, LAM_ALEF_HAMZA_BELOW, LAM_ALEF_MADDA_ABOVE
  static String normalizeLigature(String text) => ArOp.normalize_ligature(text);

  /// Standardize the Hamzat into one form of hamza (uniform method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.
  static String normalizeHamzaUniform(String text) =>
      ArOp.normalize_hamza(text, method: ArOp.METHOD_UNIFORM);

  /// Standardize the Hamzat into one form of hamza (Tasheel method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.
  static String normalizeHamzaTasheel(String text) =>
      ArOp.normalize_hamza(text, method: ArOp.METHOD_TASHEEL);

  /// converts all alefs to ALEF_MAMDODA with the exception of Alef maksura
  static String normalizeAlef(String text) => ArOp.normalize_alef(text);
}
