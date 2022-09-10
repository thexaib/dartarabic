import 'package:dartarabic/src/arabic/arabic_symbols.dart';

/// Class defining Arabic letters,characters and marks
class Arabic {
  const Arabic._();

  /// Punctuation  Symbols and marks
  static final ArabicSymbols Symbols = ArabicSymbols();

  /// Hamaza letter
  static const HAMZA = '\u0621';

  /// Alef Madda character Normalized Form
  static const ALEF_MADDA = '\u0622';

  static const ALEF_HAMZA_ABOVE = '\u0623';

  static const WAW_HAMZA = '\u0624';

  static const ALEF_HAMZA_BELOW = '\u0625';

  static const YEH_HAMZA = '\u0626';

  /// Alef character Normalized Form
  static const ALEF = '\u0627';

  /// Beh character Normalized Form
  static const BEH = '\u0628';

  /// Teh-Marbuta character Normalized Form
  static const TEH_MARBUTA = '\u0629';

  /// Teh character Normalized Form
  static const TEH = '\u062a';

  /// Theh character Normalized Form
  static const THEH = '\u062b';

  /// Jeem character Normalized Form
  static const JEEM = '\u062c';

  /// Hah character Normalized Form
  static const HAH = '\u062d';

  /// Khah character Normalized Form
  static const KHAH = '\u062e';

  /// Dal character Normalized Form
  static const DAL = '\u062f';

  /// Thal character Normalized Form
  static const THAL = '\u0630';

  /// Reh character Normalized Form
  static const REH = '\u0631';

  /// Zain character Normalized Form
  static const ZAIN = '\u0632';

  /// Seen character Normalized Form
  static const SEEN = '\u0633';

  /// Sheen character Normalized Form
  static const SHEEN = '\u0634';

  /// Sad character Normalized Form
  static const SAD = '\u0635';

  /// Dad character Normalized Form
  static const DAD = '\u0636';

  /// Tah character Normalized Form
  static const TAH = '\u0637';

  /// Zah character Normalized Form
  static const ZAH = '\u0638';

  /// Ain character Normalized Form
  static const AIN = '\u0639';

  /// Ghain character Normalized Form
  static const GHAIN = '\u063a';

  /// Feh character Normalized Form
  static const FEH = '\u0641';

  /// Qaf character Normalized Form
  static const QAF = '\u0642';

  /// Kaf character Normalized Form
  static const KAF = '\u0643';

  /// Lam character Normalized Form
  static const LAM = '\u0644';

  /// Meem character Normalized Form
  static const MEEM = '\u0645';

  /// Noon character Normalized Form
  static const NOON = '\u0646';

  /// Heh character Normalized Form
  static const HEH = '\u0647';

  /// Waw character Normalized Form
  static const WAW = '\u0648';

  /// Yeh character Normalized Form
  static const YEH = '\u064a';

  /// Character Madda-Above
  static const MADDA_ABOVE = '\u0653';

  /// Character Hamza-Above
  static const HAMZA_ABOVE = '\u0654';

  /// Character Hamza-Below
  static const HAMZA_BELOW = '\u0655';

  static const MINI_ALEF = '\u0670';

  /// Character Alef-Wasla , see also [ALEFAT]
  static const ALEF_WASLA = '\u0671';

  /// Alef-Maksura character Normalized Form
  static const ALEF_MAKSURA = '\u0649';

  /// Elongation character Tatweel
  static const TATWEEL = '\u0640';

  /// Elongation character, same as [TATWEEL]
  static const KASHIDA = TATWEEL;


  //Letter variants
  static const ALEF_ISOLATED = '\uFE8D';
  static const ALEF_END = '\uFE8E';

  static const BEH_ISOLATED = '\uFE8D';
  static const BEH_END = '\uFE90';
  static const BEH_START = '\uFE91';
  static const BEH_MID = '\uFE92';

  static const TEH_ISOLATED = '\uFE95';
  static const TEH_END = '\uFE96';
  static const TEH_START = '\uFE97';
  static const TEH_MID = '\uFE98';

  static const THEH_ISOLATED = '\uFE99';
  static const THEH_END = '\uFE9A';
  static const THEH_START = '\uFE9B';
  static const THEH_MID = '\uFE9C';

  static const JEEM_ISOLATED = '\uFE9D';
  static const JEEM_END = '\uFE9E';
  static const JEEM_START = '\uFE9F';
  static const JEEM_MID = '\uFEA0';

  static const HAH_ISOLATED = '\uFEA1';
  static const HAH_END = '\uFEA2';
  static const HAH_START = '\uFEA3';
  static const HAH_MID = '\uFEA4';

  static const KHAH_ISOLATED = '\uFEA5';
  static const KHAH_END = '\uFEA6';
  static const KHAH_START = '\uFEA7';
  static const KHAH_MID = '\uFEA8';

  static const DAL_ISOLATED = '\uFEA9';
  static const DAL_END = '\uFEAA';

  static const THAL_ISOLATED = '\uFEAB';
  static const THAL_END = '\uFEAC';

  static const REH_ISOLATED = '\uFEAD';
  static const REH_END = '\uFEAE';

  static const ZAIN_ISOLATED = '\uFEAF';
  static const ZAIN_END = '\uFEB0';

  static const SEEN_ISOLATED = '\uFEB1';
  static const SEEN_END = '\uFEB2';
  static const SEEN_START = '\uFEB3';
  static const SEEN_MID = '\uFEB4';

  static const SHEEN_ISOLATED = '\uFEB5';
  static const SHEEN_END = '\uFEB6';
  static const SHEEN_START = '\uFEB7';
  static const SHEEN_MID = '\uFEB8';

  static const SAD_ISOLATED = '\uFEB9';
  static const SAD_END = '\uFEBA';
  static const SAD_START = '\uFEBB';
  static const SAD_MID = '\uFEBC';

  static const DAD_ISOLATED = '\uFEBD';
  static const DAD_END = '\uFEBE';
  static const DAD_START = '\uFEBF';
  static const DAD_MID = '\uFEC0';

  static const TAH_ISOLATED = '\uFEC1';
  static const TAH_END = '\uFEC2';
  static const TAH_START = '\uFEC3';
  static const TAH_MID = '\uFEC4';

  static const ZAH_ISOLATED = '\uFEC5';
  static const ZAH_END = '\uFEC6';
  static const ZAH_START = '\uFEC7';
  static const ZAH_MID = '\uFEC8';

  static const AIN_ISOLATED = '\uFEC9';
  static const AIN_END = '\uFECA';
  static const AIN_START = '\uFECB';
  static const AIN_MID = '\uFECC';

  static const GHAIN_ISOLATED = '\uFECD';
  static const GHAIN_END = '\uFECE';
  static const GHAIN_START = '\uFECF';
  static const GHAIN_MID = '\uFED0';

  static const FEH_ISOLATED = '\uFED1';
  static const FEH_END = '\uFED2';
  static const FEH_START = '\uFED3';
  static const FEH_MID = '\uFED4';

  static const QAF_ISOLATED = '\uFED5';
  static const QAF_END = '\uFED6';
  static const QAF_START = '\uFED7';
  static const QAF_MID = '\uFED8';

  static const KAF_ISOLATED = '\uFED9';
  static const KAF_END = '\uFEDA';
  static const KAF_START = '\uFEDB';
  static const KAF_MID = '\uFEDC';

  static const LAM_ISOLATED = '\uFEDD';
  static const LAM_END = '\uFEDE';
  static const LAM_START = '\uFEDF';
  static const LAM_MID = '\uFEE0';

  static const MEEM_ISOLATED = '\uFEE1';
  static const MEEM_END = '\uFEE2';
  static const MEEM_START = '\uFEE3';
  static const MEEM_MID = '\uFEE4';

  static const NOON_ISOLATED = '\uFEE5';
  static const NOON_END = '\uFEE6';
  static const NOON_START = '\uFEE7';
  static const NOON_MID = '\uFEE8';

  static const HEH_ISOLATED = '\uFEE9';
  static const HEH_END = '\uFEEA';
  static const HEH_START = '\uFEEB';
  static const HEH_MID = '\uFEEC';

  static const WAW_ISOLATED = '\uFEED';
  static const WAW_END = '\uFEEE';

  static const YEH_ISOLATED = '\uFEF1';
  static const YEH_END = '\uFEF2';
  static const YEH_MID = '\uFEF4';
  static const YEH_START = '\uFEF3';

  static const ALEF_MADDA_ISOLATED = '\uFE81';
  static const ALEF_MADDA_END = '\uFE82';

  /// Character Teh Marbuta Isolated Form
  static const TEH_MARBUTA_ISOLATED = '\uFE93';
  /// Character Teh Marbuta End Form
  static const TEH_MARBUTA_END = '\uFE94';

  /// Character Alef Maksura Isolated Form
  static const ALEF_MAKSURA_ISOLATED = '\uFEEF';
  /// Character Alef Maksura End form
  static const ALEF_MAKSURA_END = '\uFEF0';

  //other variations
  /// Character Meem Indo-Pak Variant
  static const KAF_INDOPAK = '\u06a9';
  /// Character Meem Low
  static const MEEM_LOW = '\u06ed';
  /// Character Meem High
  static const MEEM_HIGH = '\u06e2';

//   Small Letters                   ;
  /// Character Small Alef
  static const SMALL_ALEF = "\u0670";

  /// Character Small Waw
  static const SMALL_WAW = "\u06E5";

  /// Character Small Yeh
  static const SMALL_YEH = "\u06E6";

// Ligatures

  /// Lam-Alef Ligature
  static const LAM_ALEF = '\ufefb';

  /// Lam-Alef-Hamza-Above Ligature
  static const LAM_ALEF_HAMZA_ABOVE = '\ufef7';

  /// Lam-Alef-Hamza-Below Ligature
  static const LAM_ALEF_HAMZA_BELOW = '\ufef9';

  /// Lam-Alef-Madda-Above Ligature
  static const LAM_ALEF_MADDA_ABOVE = '\ufef5';

// ./Ligatures

  /// Lam-Alef two characters string
  static const SIMPLE_LAM_ALEF = '\u0644\u0627';

  /// Lam-Alef-Hamza-Above two characters string
  static const SIMPLE_LAM_ALEF_HAMZA_ABOVE = '\u0644\u0623';

  /// Lam-Alef-Hamza-Below two characters string
  static const SIMPLE_LAM_ALEF_HAMZA_BELOW = '\u0644\u0625';

  /// Lam-Alef-Hamza-Above two characters string
  static const SIMPLE_LAM_ALEF_MADDA_ABOVE = '\u0644\u0622';

//  # groups

  /// Map of all Variant-Letters to Normalize letter in Arabic
  static const Map<List<String>, String> LETTERS_NORM_MAP = {
    [ALEF_ISOLATED, ALEF_END]: ALEF,
    [BEH_ISOLATED, BEH_START, BEH_MID, BEH_END]: BEH,
    [TEH_ISOLATED, TEH_START, TEH_MID, TEH_END]: TEH,
    [THEH_ISOLATED, THEH_START, THEH_MID, THEH_END]: THEH,
    [JEEM_ISOLATED, JEEM_START, JEEM_MID, JEEM_END]: JEEM,
    [HAH_ISOLATED, HAH_START, HAH_MID, HAH_END]: HAH,
    [KHAH_ISOLATED, KHAH_START, KHAH_MID, KHAH_END]: KHAH,
    [DAL_ISOLATED, DAL_END]: DAL,
    [THAL_ISOLATED, THAL_END]: THAL,
    [REH_ISOLATED, REH_END]: REH,
    [ZAIN_ISOLATED, ZAIN_END]: ZAIN,
    [SEEN_ISOLATED, SEEN_START, SEEN_MID, SEEN_END]: SEEN,
    [SHEEN_ISOLATED, SHEEN_START, SHEEN_MID, SHEEN_END]: SHEEN,
    [SAD_ISOLATED, SAD_START, SAD_MID, SAD_END]: SAD,
    [DAD_ISOLATED, DAD_START, DAD_MID, DAD_END]: DAD,
    [TAH_ISOLATED, TAH_START, TAH_MID, TAH_END]: TAH,
    [ZAH_ISOLATED, ZAH_START, ZAH_MID, ZAH_END]: ZAH,
    [AIN_ISOLATED, AIN_START, AIN_MID, AIN_END]: AIN,
    [GHAIN_ISOLATED, GHAIN_START, GHAIN_MID, GHAIN_END]: GHAIN,
    [FEH_ISOLATED, FEH_START, FEH_MID, FEH_END]: FEH,
    [QAF_ISOLATED, QAF_START, QAF_MID, QAF_END]: QAF,
    [KAF_ISOLATED, KAF_START, KAF_MID, KAF_END]: KAF,
    [LAM_ISOLATED, LAM_START, LAM_MID, LAM_END]: LAM,
    [MEEM_ISOLATED, MEEM_START, MEEM_MID, MEEM_END]: MEEM,
    [NOON_ISOLATED, NOON_START, NOON_MID, NOON_END]: NOON,
    [HEH_ISOLATED, HEH_START, HEH_MID, HEH_END]: HEH,
    [WAW_ISOLATED, WAW_END]: WAW,
    [YEH_ISOLATED, YEH_START, YEH_MID, YEH_END]: YEH,
    [ALEF_MADDA_ISOLATED, ALEF_MADDA_END]: ALEF_MADDA,
    [TEH_MARBUTA_ISOLATED, TEH_MARBUTA_END]: TEH_MARBUTA,
    [ALEF_MAKSURA_ISOLATED, ALEF_MAKSURA_END]: ALEF_MAKSURA,
  };

  /// Map of all [RegExp] to match and replace Letters to Normalized Letters
  static final Map<RegExp, String> LETTERS_NORM_MAP_REG = LETTERS_NORM_MAP
      .map((key, value) => MapEntry(RegExp("[${key.join()}]"), value));

  /// List of All Arabic Alphbet Letters
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

  /// List of Ligature Letters
  static const LIGATURES = [
    LAM_ALEF,
    LAM_ALEF_HAMZA_ABOVE,
    LAM_ALEF_HAMZA_BELOW,
    LAM_ALEF_MADDA_ABOVE
  ];

  /// List of all variants of Meem(s)
  static const MEEM_ALL = [MEEM, MEEM_HIGH, MEEM_LOW];

  /// List of all variants of Hamza(s)
  static const HAMZAT = [
    HAMZA,
    WAW_HAMZA,
    YEH_HAMZA,
    HAMZA_ABOVE,
    HAMZA_BELOW,
    ALEF_HAMZA_BELOW,
    ALEF_HAMZA_ABOVE
  ];

  /// List of all variants of Alef(s)
  static const ALEFAT = [
    ALEF,
    ALEF_MADDA,
    ALEF_HAMZA_ABOVE,
    ALEF_HAMZA_BELOW,
    ALEF_WASLA,
    ALEF_MAKSURA,
    SMALL_ALEF
  ];

  /// List of Weak vowel letters
  static const WEAK = [ALEF, WAW, YEH, ALEF_MAKSURA];

  /// List of Yeh like letters
  static const YEHLIKE = [YEH, YEH_HAMZA, ALEF_MAKSURA, SMALL_YEH];

  /// List of Waw like letters
  static const WAWLIKE = [WAW, WAW_HAMZA, SMALL_WAW];

  /// List of Teh like letters
  static const TEHLIKE = [TEH, TEH_MARBUTA];

  /// List of Small Alef(s)
  static const SMALL = [SMALL_ALEF, SMALL_WAW, SMALL_YEH];

  // Tajweed Related
  /// Letters of Qalqala, strong sounds
  static const QALQALA_LETTERS = [DAL, JEEM, BEH, TAH, QAF];

  /// Letters before which Idgham is performed
  static const IDGHAM_BEFORE_LETTERS = [WAW, WAW_HAMZA, MEEM, NOON, YEH];

  /// Letters before which Ikhfa is performed
  static const IKHFA_BEFORE_LETTERS = [
    SAD,
    THAL,
    THEH,
    KAF,
    KAF_INDOPAK,
    JEEM,
    SHEEN,
    QAF,
    SEEN,
    DAL,
    TAH,
    ZAH,
    FEH,
    TEH,
    DAD,
    ZAIN,
  ];

  // ./Tajweed Related

  /// Moon(Qamari) Letters
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

  /// Sun (Shamsi) letters
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

  /// Arabic Letters in Alphabetic order,Map of String:order
  static const Map<String, int> ALPHABETIC_ORDER = {
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

  /// List of Names of Letters and Symbols. Map<String,String>=> String:Name
  static final NAMES = {
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
    Symbols.FATHATAN: 'فتحتان',
    Symbols.DAMMATAN: 'ضمتان',
    Symbols.KASRATAN: 'كسرتان',
    Symbols.FATHA: 'فتحة',
    Symbols.DAMMA: 'ضمة',
    Symbols.KASRA: 'كسرة',
    Symbols.SHADDA: 'شدة',
    Symbols.SUKUN: 'سكون',
  };

  /// [RegExp] to match Liguatures
  static final LIGUATURES_PATTERN =
      RegExp(r"[" + LIGATURES.join() + r"]", unicode: true);

  /// [RegExp] to match all Hamaz letters
  static final HAMZAT_PATTERN =
      RegExp(r"[" + HAMZAT.join() + r"]", unicode: true);

  /// [RegExp] to match all Alef letters
  static final ALEFAT_PATTERN =
      RegExp(r"[" + ALEFAT.join() + r"]", unicode: true);
}
