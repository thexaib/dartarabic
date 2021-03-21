import 'package:unicode_data/unicode_data.dart';

class Ar {
  static const COMMA = '\u060C';

  static const SEMICOLON = '\u061B';

  static const QUESTION = '\u061F';

  static const HAMZA = '\u0621';

  static const ALEF_MADDA = '\u0622';

  static const ALEF_HAMZA_ABOVE = '\u0623';

  static const WAW_HAMZA = '\u0624';

  static const ALEF_HAMZA_BELOW = '\u0625';

  static const YEH_HAMZA = '\u0626';

  static const ALEF = '\u0627';

  static const BEH = '\u0628';

  static const TEH_MARBUTA = '\u0629';

  static const TEH = '\u062a';

  static const THEH = '\u062b';

  static const JEEM = '\u062c';

  static const HAH = '\u062d';

  static const KHAH = '\u062e';

  static const DAL = '\u062f';

  static const THAL = '\u0630';

  static const REH = '\u0631';

  static const ZAIN = '\u0632';

  static const SEEN = '\u0633';

  static const SHEEN = '\u0634';

  static const SAD = '\u0635';

  static const DAD = '\u0636';

  static const TAH = '\u0637';

  static const ZAH = '\u0638';

  static const AIN = '\u0639';

  static const GHAIN = '\u063a';

  static const TATWEEL = '\u0640';

  static const FEH = '\u0641';

  static const QAF = '\u0642';

  static const KAF = '\u0643';

  static const LAM = '\u0644';

  static const MEEM = '\u0645';

  static const NOON = '\u0646';

  static const HEH = '\u0647';

  static const WAW = '\u0648';

  static const ALEF_MAKSURA = '\u0649';

  static const YEH = '\u064a';

  static const MADDA_ABOVE = '\u0653';

  static const HAMZA_ABOVE = '\u0654';

  static const HAMZA_BELOW = '\u0655';

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

  static const STAR = '\u066d';

  static const MINI_ALEF = '\u0670';

  static const ALEF_WASLA = '\u0671';

  static const FULL_STOP = '\u06d4';

  static const BYTE_ORDER_MARK = '\ufeff';

//   Diacritics                      ;
  static const FATHATAN = '\u064b';

  static const DAMMATAN = '\u064c';

  static const KASRATAN = '\u064d';

  static const FATHA = '\u064e';

  static const DAMMA = '\u064f';

  static const KASRA = '\u0650';

  static const SHADDA = '\u0651';

  static const SUKUN = '\u0652';

//   Small Letters                   ;
  static const SMALL_ALEF = "\u0670";

  static const SMALL_WAW = "\u06E5";

  static const SMALL_YEH = "\u06E6";

//   #Ligatures                        ;
  static const LAM_ALEF = '\ufefb';

  static const LAM_ALEF_HAMZA_ABOVE = '\ufef7';

  static const LAM_ALEF_HAMZA_BELOW = '\ufef9';

  static const LAM_ALEF_MADDA_ABOVE = '\ufef5';

  static const SIMPLE_LAM_ALEF = '\u0644\u0627';

  static const SIMPLE_LAM_ALEF_HAMZA_ABOVE = '\u0644\u0623';
  static const SIMPLE_LAM_ALEF_HAMZA_BELOW = '\u0644\u0625';
  static const SIMPLE_LAM_ALEF_MADDA_ABOVE = '\u0644\u0622';

//  # groups
  static const LETTERS = [
    ALEF,
    BEH,
    TEH,
    TEH_MARBUTA,
    THEH,
    JEEM,
    HAH,
    KHAH,
    DAL,
    THAL,
    REH,
    ZAIN,
    SEEN,
    SHEEN,
    SAD,
    DAD,
    TAH,
    ZAH,
    AIN,
    GHAIN,
    FEH,
    QAF,
    KAF,
    LAM,
    MEEM,
    NOON,
    HEH,
    WAW,
    YEH,
    HAMZA,
    ALEF_MADDA,
    ALEF_HAMZA_ABOVE,
    WAW_HAMZA,
    ALEF_HAMZA_BELOW,
    YEH_HAMZA
  ];

  static const TASHKEEL = [
    FATHATAN,
    DAMMATAN,
    KASRATAN,
    FATHA,
    DAMMA,
    KASRA,
    SUKUN,
    SHADDA
  ];

  static const HARAKAT = [
    FATHATAN,
    DAMMATAN,
    KASRATAN,
    FATHA,
    DAMMA,
    KASRA,
    SUKUN
  ];

  static const SHORTHARAKAT = [FATHA, DAMMA, KASRA, SUKUN];

  static const TANWIN = [FATHATAN, DAMMATAN, KASRATAN];

  static const NOT_DEF_HARAKA = TATWEEL;

  static const LIGUATURES = [
    LAM_ALEF,
    LAM_ALEF_HAMZA_ABOVE,
    LAM_ALEF_HAMZA_BELOW,
    LAM_ALEF_MADDA_ABOVE
  ];

  static const HAMZAT = [
    HAMZA,
    WAW_HAMZA,
    YEH_HAMZA,
    HAMZA_ABOVE,
    HAMZA_BELOW,
    ALEF_HAMZA_BELOW,
    ALEF_HAMZA_ABOVE
  ];

  static const ALEFAT = [
    ALEF,
    ALEF_MADDA,
    ALEF_HAMZA_ABOVE,
    ALEF_HAMZA_BELOW,
    ALEF_WASLA,
    ALEF_MAKSURA,
    SMALL_ALEF
  ];

  static const WEAK = [ALEF, WAW, YEH, ALEF_MAKSURA];
  static const YEHLIKE = [YEH, YEH_HAMZA, ALEF_MAKSURA, SMALL_YEH];

  static const WAWLIKE = [WAW, WAW_HAMZA, SMALL_WAW];
  static const TEHLIKE = [TEH, TEH_MARBUTA];

  static const SMALL = [SMALL_ALEF, SMALL_WAW, SMALL_YEH];

  static const MOON = [
    HAMZA,
    ALEF_MADDA,
    ALEF_HAMZA_ABOVE,
    ALEF_HAMZA_BELOW,
    ALEF,
    BEH,
    JEEM,
    HAH,
    KHAH,
    AIN,
    GHAIN,
    FEH,
    QAF,
    KAF,
    MEEM,
    HEH,
    WAW,
    YEH
  ];

  static const SUN = [
    TEH,
    THEH,
    DAL,
    THAL,
    REH,
    ZAIN,
    SEEN,
    SHEEN,
    SAD,
    DAD,
    TAH,
    ZAH,
    LAM,
    NOON,
  ];

  static const ALPHABETIC_ORDER = {
    ALEF: 1,
    BEH: 2,
    TEH: 3,
    TEH_MARBUTA: 3,
    THEH: 4,
    JEEM: 5,
    HAH: 6,
    KHAH: 7,
    DAL: 8,
    THAL: 9,
    REH: 10,
    ZAIN: 11,
    SEEN: 12,
    SHEEN: 13,
    SAD: 14,
    DAD: 15,
    TAH: 16,
    ZAH: 17,
    AIN: 18,
    GHAIN: 19,
    FEH: 20,
    QAF: 21,
    KAF: 22,
    LAM: 23,
    MEEM: 24,
    NOON: 25,
    HEH: 26,
    WAW: 27,
    YEH: 28,
    HAMZA: 29,
    ALEF_MADDA: 29,
    ALEF_HAMZA_ABOVE: 29,
    WAW_HAMZA: 29,
    ALEF_HAMZA_BELOW: 29,
    YEH_HAMZA: 29,
  };

  static const NAMES = {
    ALEF: "ألف",
    BEH: "باء",
    TEH: 'تاء',
    TEH_MARBUTA: 'تاء مربوطة',
    THEH: 'ثاء',
    JEEM: 'جيم',
    HAH: 'حاء',
    KHAH: 'خاء',
    DAL: 'دال',
    THAL: 'ذال',
    REH: 'راء',
    ZAIN: 'زاي',
    SEEN: 'سين',
    SHEEN: 'شين',
    SAD: 'صاد',
    DAD: 'ضاد',
    TAH: 'طاء',
    ZAH: 'ظاء',
    AIN: 'عين',
    GHAIN: 'غين',
    FEH: 'فاء',
    QAF: 'قاف',
    KAF: 'كاف',
    LAM: 'لام',
    MEEM: 'ميم',
    NOON: 'نون',
    HEH: 'هاء',
    WAW: 'واو',
    YEH: 'ياء',
    HAMZA: 'همزة',
    TATWEEL: 'تطويل',
    ALEF_MADDA: 'ألف ممدودة',
    ALEF_MAKSURA: 'ألف مقصورة',
    ALEF_HAMZA_ABOVE: 'همزة على الألف',
    WAW_HAMZA: 'همزة على الواو',
    ALEF_HAMZA_BELOW: 'همزة تحت الألف',
    YEH_HAMZA: 'همزة على الياء',
    FATHATAN: 'فتحتان',
    DAMMATAN: 'ضمتان',
    KASRATAN: 'كسرتان',
    FATHA: 'فتحة',
    DAMMA: 'ضمة',
    KASRA: 'كسرة',
    SHADDA: 'شدة',
    SUKUN: 'سكون',
  };

  static final List<int> DIACRITICS_RANGE = [
    for (int i = 0x0600; i < 0x06ff; ++i) i
  ];
  static final DIACRITICS = DIACRITICS_RANGE.where((element) {
    final found = UnicodeScript.scripts
        .where((script) => element >= script.start && element <= script.end);
    if (found.isEmpty) return false;
    final script = found.single;
    return script.category == "Mn";
  }).map((e) => String.fromCharCode(e));

  static final HARAKAT_PATTERN =
      RegExp(r'[' + HARAKAT.join() + r']', unicode: true);

  static final LIGUATURES_PATTERN =
      RegExp(r"[" + LIGUATURES.join() + r"]", unicode: true);
  static final HAMZAT_PATTERN =
      RegExp(r"[" + HAMZAT.join() + r"]", unicode: true);
  static final ALEFAT_PATTERN =
      RegExp(r"[" + ALEFAT.join() + r"]", unicode: true);
}
