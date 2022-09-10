import 'package:dartarabic/src/arabic/arabic.dart';
import 'package:dartarabic/src/unicode_data/script.dart';

class ArabicSymbols {
  ArabicSymbols();

  // numbers
  static const ZERO = '\u0660';

  static const ONE = '\u0661';

  static const TWO = '\u0662';

  static const THREE = '\u0663';

  static const FOUR = '\u0664';

  static const FIVE = '\u0665';

  static const SIX = '\u0666';

  static const SEVEN = '\u0667';

  static const EIGHT = '\u0668';

  static const NINE = '\u0669';

  static const PERCENT = '\u066a';

  static const DECIMAL = '\u066b';

  static const THOUSANDS = '\u066c';

  // ./numbers
  static const STAR = '\u066d';

  final COMMA = '\u060C';

  final SEMICOLON = '\u061B';

  final QUESTION = '\u061F';
  final FULL_STOP = '\u06d4';

  final BYTE_ORDER_MARK = '\ufeff';

  final EMPTY_ALEF = Arabic.ALEF_MAKSURA;
  final EMPTY_YEH = Arabic.ALEF;
  final SPACE = ' ';

  //stop signs uthmani
  final UTHMANI_STOP_ZIM = '\u06da';
  final UTHMANI_STOP_LAM = '\u06d9';
  final UTHMANI_STOP_SEEN_HIGH = '\u06dc';
  final UTHMANI_STOP_MEEM = '\u06d8';
  final UTHMANI_STOP_DOTS_THREE = '\u06db';
  final UTHMANI_STOP_QAF_LAM = '\u06d7';
  final UTHMANI_STOP_SAAD_LAM = '\u06d6';
  late final List<String> ALL_UTHMANI_STOPS = [
    UTHMANI_STOP_ZIM,
    UTHMANI_STOP_MEEM,
    UTHMANI_STOP_SAAD_LAM,
    UTHMANI_STOP_QAF_LAM,
    UTHMANI_STOP_DOTS_THREE,
    UTHMANI_STOP_LAM,
  ];

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
