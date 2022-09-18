import 'package:dartarabic/src/arabic/arabic.dart';
import 'package:dartarabic/src/unicode_data/script.dart';

class ArabicSymbols {
  ArabicSymbols() {
    UTHMANI_STOP_ZIM = UTHMANI_STOP_JEEM;
    SUKUN_MARKS = [SUKUN, SUKUN_CURVY, SUKUN_ROUNDED];
    HARAKAT = [
      FATHATAN,
      DAMMATAN,
      KASRATAN,
      FATHA,
      DAMMA,
      KASRA,
      ...SUKUN_MARKS,
    ];
    HARAKAT_PATTERN = RegExp(r'[' + HARAKAT.join() + r']', unicode: true);
    SHORTHARAKAT = [FATHA, DAMMA, KASRA, SUKUN];
    ALL_UTHMANI_STOPS = [
      UTHMANI_STOP_SAAD_LAM,
      UTHMANI_STOP_QAF_LAM,
      UTHMANI_STOP_MEEM,
      UTHMANI_STOP_LAM,
      UTHMANI_STOP_JEEM,
      UTHMANI_STOP_DOTS_THREE,
      UTHMANI_STOP_SEEN_HIGH,
    ];
    TASHKEEL = [
      FATHATAN,
      DAMMATAN,
      KASRATAN,
      FATHA,
      DAMMA,
      KASRA,
      SUKUN,
      SHADDA
    ];
    TANWIN = [FATHATAN, DAMMATAN, KASRATAN];
    DIACRITICS = DIACRITICS_RANGE.where((element) {
      final found = UnicodeScript.scripts
          .where((script) => element >= script.start && element <= script.end);
      if (found.isEmpty) return false;
      final script = found.single;
      return script.category == "Mn";
    }).map((e) => String.fromCharCode(e));

    ALL_COMBINING_MARKS = [
      COMBINING_MARK_SUBSCRIPT_ALEF,
      COMBINING_MARK_INVERTED_DAMMA,
      COMBINING_MARK_NOON_GHUNNA,
      COMBINING_MARK_ZWARAKAY,
      COMBINING_MARK_VOWEL_SIGN_V_ABOVE,
      COMBINING_MARK_VOWEL_SIGN_INVERTED_V_ABOVE,
      COMBINING_MARK_VOWEL_SIGN_DOT_BELOW,
      COMBINING_MARK_REVERSE_DAMMA,
      COMBINING_MARK_FATHA_TWO_DOTS,
      COMBINING_MARK_HAMZA_BELOW_WAVY,
    ];
  }

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

  /// Poetic verse sign <b>&#1550;</b>
  final SIGN_POETIC_VERSE = '\u060E';

  /// Poetic sign Misra <b>&#1551;</b>
  final SIGN_MISRA = '\u060F';

  ///  Honorific Sign Sallallahu Alayhe Wasalm <b>&#1552;</b>
  final HONORIFIC_SALLALLAHU_TOP_SIGN = '\u0610';

  ///  Honorific Sign Alayhe Assalam <b>&#1553;</b>
  final HONORIFIC_ALAYHE_SALAM_TOP_SIGN = '\u0611';

  ///  Honorific Sign Rahmatullah Alayhe <b>&#1554;</b>
  final HONORIFIC_RAHMATULLAH_TOP_SIGN = '\u0612';

  ///  Honorific Sign Radi Allahu Anhu <b>&#1555;</b>
  final HONORIFIC_RADI_ALLAH_TOP_SIGN = '\u0613';

  ///  Honorific Sign Takhallus <b>&#1556;</b>
  final HONORIFIC_TAKHALLUS_TOP_SIGN = '\u0614';

  ///  Quranic Annotation small Tah <b>&#1558;</b>
  final QURAN_ANNOTATION_TAH = '\u0615';

  ///  Quranic Annotation small Zain <code>&#1559;</code>
  final QURAN_ANNOTATION_ZAIN = '\u0617';

  ///  Quranic Annotation small Fatha <code>&#1559;</code>
  final QURAN_ANNOTATION_SMALL_FATHA = '\u0618';

  ///  Quranic Annotation small Damma <code>&#1561;</code>
  final QURAN_ANNOTATION_SMALL_DAMMA = '\u0619';

  ///  Quranic Annotation small Kasra <code>&#1562;</code>
  final QURAN_ANNOTATION_SMALL_KASRA = '\u061A';

  /// Punctuation Three Dots &#1566;
  final TRIPPLE_DOT = '\u061E';

  /// Question Mark &#1567;
  final QUESTION = '\u061F';

  final FULL_STOP = '\u06d4';

  final BYTE_ORDER_MARK = '\ufeff';

  /// same as [Arabic.ALEF_MAKSURA]
  final EMPTY_ALEF = Arabic.ALEF_MAKSURA;

  /// same as [Arabic.ALEF]
  final EMPTY_YEH = Arabic.ALEF;

  final SPACE = '\u0020'; //''' ';
  /// Format Character Mark <code>&#1564;</code>
  final FORMAT_CHARACTER_MARK = '\u061c';
  final FORMAT_CHARACTER_EMPTY_CELL = '\u061d';

  /// Semicolon <code>&#1563;</code>
  final SEMICOLON = '\u061B';

  /// AYAH END SIGN <code>&#1757;</code>
  final SIGN_AYAH_END = '\u06DD';

  //stop signs uthmani
  /// SAD-LAM-ALEF-MAKSURA <b> &#1750;</b>
  final UTHMANI_STOP_SAAD_LAM = '\u06d6';

  /// QAF-LAM-ALEF-MAKSURA &#1751;
  final UTHMANI_STOP_QAF_LAM = '\u06d7';

  /// SMALL HIGH MEEM &#1752;
  final UTHMANI_STOP_MEEM = '\u06d8';

  /// HIGH LAM-ALEF U+06D9
  final UTHMANI_STOP_LAM = '\u06d9';

  /// SMALL HIGH JEEM &#1754;
  final UTHMANI_STOP_JEEM = '\u06da';

  /// SMALL HIGH THREE DOTS &#1755;
  final UTHMANI_STOP_DOTS_THREE = '\u06db';

  /// SMALL HIGH SEEN &#1756;
  final UTHMANI_STOP_SEEN_HIGH = '\u06dc';

  /// STAR OF RUB-EL-HIZEB &#1758;
  final STAR_RUBEL_HIZEB = '\u06DE';

  /// SAJDA SIGN &#1769;
  final SIGN_SAJDAH = '\u06E9';

//   Diacritics                      ;
  /// Fthatan <b>&#1611;</b>
  final FATHATAN = '\u064b';

  /// Dammatan <b>&#1612;</b>
  final DAMMATAN = '\u064c';

  /// Kasratan <b>&#1613;</b>
  final KASRATAN = '\u064d';

  /// Fatha <b>&#1614;</b>
  final FATHA = '\u064e';

  /// Damma <b>&#1615;</b>
  final DAMMA = '\u064f';

  /// Kasra <b>&#1616;</b>
  final KASRA = '\u0650';

  /// Shadda <b>&#1617;</b>
  final SHADDA = '\u0651';

  /// Sukun <b>&#1618;</b>
  final SUKUN = '\u0652';
  final SUKUN_CURVY = '\u06e1';
  final SUKUN_ROUNDED = '\u06df';

  /// Combining Mark Subscript Alef <b>&#1622;</b>
  final COMBINING_MARK_SUBSCRIPT_ALEF = '\u0656';

  /// Combining Mark Inverted Damma <b>&#1623;</b>
  final COMBINING_MARK_INVERTED_DAMMA = '\u0657';

  /// Combining Mark Noon Ghunna <b>&#1624;</b>
  final COMBINING_MARK_NOON_GHUNNA = '\u0658';

  /// Combining Mark Zwarakay <b>&#1625;</b>
  final COMBINING_MARK_ZWARAKAY = '\u0659';

  /// Combining Mark Vowel Sign Small V Above <b>&#1626;</b>
  final COMBINING_MARK_VOWEL_SIGN_V_ABOVE = '\u065a';

  /// Combining Mark Vowel Sign Invertd Small V Above <b>&#1627;</b>
  final COMBINING_MARK_VOWEL_SIGN_INVERTED_V_ABOVE = '\u065b';

  /// Combining Mark Vowel Sign Dot Below <b>&#1628;</b>
  final COMBINING_MARK_VOWEL_SIGN_DOT_BELOW = '\u065c';

  /// Combining Mark Reverse Damma <b>&#1629;</b>
  final COMBINING_MARK_REVERSE_DAMMA = '\u065d';

  /// Combining Mark Fatha with Two dots<b>&#1630;</b>
  final COMBINING_MARK_FATHA_TWO_DOTS = '\u065e';

  /// Combining Mark Wavy Hamza Below<b>&#1631;</b>
  final COMBINING_MARK_HAMZA_BELOW_WAVY = '\u065f';

  /// All combining marks : [COMBINING_MARK_SUBSCRIPT_ALEF,COMBINING_MARK_INVERTED_DAMMA,COMBINING_MARK_NOON_GHUNNA,COMBINING_MARK_ZWARAKAY,COMBINING_MARK_VOWEL_SIGN_V_ABOVE,COMBINING_MARK_VOWEL_SIGN_INVERTED_V_ABOVE,COMBINING_MARK_VOWEL_SIGN_DOT_BELOW,COMBINING_MARK_REVERSE_DAMMA,COMBINING_MARK_FATHA_TWO_DOTS,COMBINING_MARK_HAMZA_BELOW_WAVY]
  late final List<String> ALL_COMBINING_MARKS;

  /// SMALL HIGH JEEM &#1754; [UTHMANI_STOP_JEEM]
  late final UTHMANI_STOP_ZIM;

  late final SUKUN_MARKS;

  late final HARAKAT;

  late final HARAKAT_PATTERN;

  late final SHORTHARAKAT;

  late final TASHKEEL;

  late final TANWIN;

  /// LIST OF ALL UTHMANI STOPS
  late final List<String> ALL_UTHMANI_STOPS;

  final List<int> DIACRITICS_RANGE = [for (int i = 0x0600; i < 0x06ff; ++i) i];
  late final Iterable<String> DIACRITICS;
}
