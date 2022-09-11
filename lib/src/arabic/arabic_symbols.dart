import 'package:dartarabic/src/arabic/arabic.dart';
import 'package:dartarabic/src/unicode_data/script.dart';

class ArabicSymbols {
  ArabicSymbols();

  // numbers
  final ZERO = '\u0660';

  final ONE = '\u0661';

  final TWO = '\u0662';

  final THREE = '\u0663';

  final FOUR = '\u0664';

  final FIVE = '\u0665';

  final SIX = '\u0666';

  final SEVEN = '\u0667';

  final EIGHT = '\u0668';

  final NINE = '\u0669';
  // ./numbers

  final PERCENT = '\u066a';

  final DECIMAL = '\u066b';

  final THOUSANDS = '\u066c';
  final STAR = '\u066d';

  final ZERO_WIDTH_JOINER = '\u200D';

  final PARENTHESIS_LEFT = '\uFD3E';
  final PARENTHESIS_RIGHT = '\uFD3F';

  final COMMA = '\u060C';
  final DATE_SEPARATOR = '\u060D';
  final SIGN_POETIC_VERSE = '\u060E';
  final SIGN_MISRA = '\u060F';

  ///  Quranic Annotation small Tah &#1558;
  final QURAN_ANNOTATION_TAH = '\u0615';
  ///  Quranic Annotation small Zain &#1559;
  final QURAN_ANNOTATION_ZAIN = '\u0617';
  /// Punctuation Three Dots &#1566;
  final TRIPPLE_DOT = '\u061E';

  /// Question Mark &#1567;
  final QUESTION = '\u061F';

  final SEMICOLON = '\u061B';

  final FULL_STOP = '\u06d4';

  final BYTE_ORDER_MARK = '\ufeff';

  final EMPTY_ALEF = Arabic.ALEF_MAKSURA;
  final EMPTY_YEH = Arabic.ALEF;
  final SPACE = ' ';

  //stop signs uthmani
  /// SAD-LAM-ALEF-MAKSURA &#1750;
  final UTHMANI_STOP_SAAD_LAM = '\u06d6';

  /// QAF-LAM-ALEF-MAKSURA &#1751;
  final UTHMANI_STOP_QAF_LAM = '\u06d7';
  /// SMALL HIGH MEEM &#1752;
  final UTHMANI_STOP_MEEM = '\u06d8';
  /// HIGH LAM-ALEF U+06D9
  final UTHMANI_STOP_LAM = '\u06d9';

  /// SMALL HIGH JEEM &#1754;
  final UTHMANI_STOP_JEEM = '\u06da';

  /// SMALL HIGH JEEM &#1754; [UTHMANI_STOP_JEEM]
  late final UTHMANI_STOP_ZIM = UTHMANI_STOP_JEEM;

  /// SMALL HIGH THREE DOTS &#1755;
  final UTHMANI_STOP_DOTS_THREE = '\u06db';

  /// SMALL HIGH SEEN &#1756;
  final UTHMANI_STOP_SEEN_HIGH = '\u06dc';


  /// LIST OF ALL UTHMANI STOPS
  late final List<String> ALL_UTHMANI_STOPS = [
    UTHMANI_STOP_SAAD_LAM,
    UTHMANI_STOP_QAF_LAM,
    UTHMANI_STOP_MEEM,
    UTHMANI_STOP_LAM,
    UTHMANI_STOP_JEEM,
    UTHMANI_STOP_DOTS_THREE,
    UTHMANI_STOP_SEEN_HIGH,
  ];

  /// AYAH END SIGN &#1757;
  final SIGN_AYAH_END = '\u06DD';
  /// STAR OF RUB-EL-HIZEB &#1758;
  final STAR_RUBEL_HIZEB = '\u06DE';

  /// SAJDA SIGN &#1769;
  final SIGN_SAJDAH = '\u06E9';
//   Diacritics                      ;
  final FATHATAN = '\u064b';

  final DAMMATAN = '\u064c';

  final KASRATAN = '\u064d';

  final FATHA = '\u064e';

  final DAMMA = '\u064f';

  final KASRA = '\u0650';

  final SHADDA = '\u0651';

  final SUKUN = '\u0652';
  final SUKUN_CURVY = '\u06e1';
  final SUKUN_ROUNDED = '\u06df';

  late final SUKUN_MARKS = [SUKUN, SUKUN_CURVY, SUKUN_ROUNDED];
  late final HARAKAT = [
    FATHATAN,
    DAMMATAN,
    KASRATAN,
    FATHA,
    DAMMA,
    KASRA,
    ...SUKUN_MARKS,
  ];
  late final HARAKAT_PATTERN =
      RegExp(r'[' + HARAKAT.join() + r']', unicode: true);

  late final SHORTHARAKAT = [FATHA, DAMMA, KASRA, SUKUN];

  late final TASHKEEL = [
    FATHATAN,
    DAMMATAN,
    KASRATAN,
    FATHA,
    DAMMA,
    KASRA,
    SUKUN,
    SHADDA
  ];

  late final TANWIN = [FATHATAN, DAMMATAN, KASRATAN];

  final List<int> DIACRITICS_RANGE = [for (int i = 0x0600; i < 0x06ff; ++i) i];
  late final DIACRITICS = DIACRITICS_RANGE.where((element) {
    final found = UnicodeScript.scripts
        .where((script) => element >= script.start && element <= script.end);
    if (found.isEmpty) return false;
    final script = found.single;
    return script.category == "Mn";
  }).map((e) => String.fromCharCode(e));
}
