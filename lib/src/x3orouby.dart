import 'operations.dart';

extension x3orouby on String {
  /// Strip Harakat from [text] arabic word except Shadda. The striped marks are : FATHA, DAMMA, KASRA,  FATHATAN, DAMMATAN, KASRATAN,SUKUN Marks,
  String stripHarakat() => ArOp.strip_harakat(this);

  /// Strip vowels from [text], include Shadda. The striped marks are : FATHA, DAMMA, KASRA, SUKUN, SHADDA, FATHATAN, DAMMATAN, KASRATAN
  String stripTashkeel() => ArOp.strip_tashkeel(this);

  /// Strip arabic diacritics from [text]. The striped marks are : Small Alef, Harakat + Shadda, Quranic marks, Extended arabic diacritics
  String stripDiacritics() => ArOp.strip_diacritics(this);

  /// Strip tatweel from [text] and return a result text.
  String stripTatweel() => ArOp.strip_tatweel(this);

  /// Strip Shadda from [text] and return a result text.
  String stripShadda() => ArOp.strip_shadda(this);

  /// Normalize Lam Alef ligatures into two letters (LAM and ALEF), and Tand return a result text.Some systems present lamAlef ligature as a single letter, this function convert it into two letters, The converted letters into  LAM and ALEF are  :  LAM_ALEF, LAM_ALEF_HAMZA_ABOVE, LAM_ALEF_HAMZA_BELOW, LAM_ALEF_MADDA_ABOVE
  String normalizeLigature() => ArOp.normalize_ligature(this);

  /// Standardize the Hamzat into one form of hamza (uniform method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.
  String normalizeHamzaUniform() =>
      ArOp.normalize_hamza(this, method: ArOp.METHOD_UNIFORM);

  /// Standardize the Hamzat into one form of hamza (Tasheel method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.
  String normalizeHamzaTasheel() =>
      ArOp.normalize_hamza(this, method: ArOp.METHOD_TASHEEL);

  /// converts all alefs to ALEF_MAMDODA with the exception of Alef maksura
  String normalizeAlef() => ArOp.normalize_alef(this);

  /// converts non standard letter characters to single letters. e.g HEH_START ﻫ is converted to ه
  String normalizeLetters() => ArOp.normalize_letters(this);
}

extension n3orouby on num {
  /// Convert number to ordinal words
  String spellingNumber() => ArOp.spellingNumber(this);
}
