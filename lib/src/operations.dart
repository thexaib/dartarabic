import 'package:dartarabic/src/extensions.dart';
import 'package:string_validator/string_validator.dart';

import 'arabic/arabic.dart';

class ArOp {
  static const String METHOD_UNIFORM = "uniform";
  static const String METHOD_TASHEEL = "tasheel";

  static bool is_sukun(String arab) => arab.compareTo(Arabic.Symbols.SUKUN) == 0;

  static bool is_shadda(String arab) => arab.compareTo(Arabic.Symbols.SHADDA) == 0;

  static bool is_tatweel(String arab) => arab.compareTo(Arabic.TATWEEL) == 0;

  static bool is_tanwin(String arab) => Arabic.Symbols.TANWIN.contains(arab);

  static bool is_tashkeel(String arab) => Arabic.Symbols.TASHKEEL.contains(arab);

  static bool is_haraka(String arab) => Arabic.Symbols.HARAKAT.contains(arab);

  static bool is_shortharaka(String arab) => Arabic.Symbols.SHORTHARAKAT.contains(arab);

  static bool is_ligature(String arab) => Arabic.LIGATURES.contains(arab);

  static bool is_hamza(String arab) => Arabic.HAMZAT.contains(arab);

  static bool is_alef(String arab) => Arabic.ALEFAT.contains(arab);

  static bool is_yehlike(String arab) => Arabic.YEHLIKE.contains(arab);

  static bool is_wawlike(String arab) => Arabic.WAWLIKE.contains(arab);

  static bool is_teh(String arab) => Arabic.TEHLIKE.contains(arab);

  static bool is_small(String arab) => Arabic.SMALL.contains(arab);

  static bool is_weak(String arab) => Arabic.WEAK.contains(arab);

  static bool is_moon(String arab) => Arabic.MOON.contains(arab);

  static bool is_sun(String arab) => Arabic.SUN.contains(arab);

  static int? order(String archar) =>
      Arabic.ALPHABETIC_ORDER.containsKey(archar)
          ? Arabic.ALPHABETIC_ORDER[archar]
          : 0;

  static String? name(String archar) =>
      Arabic.NAMES.containsKey(archar) ? Arabic.NAMES[archar] : "";

  static bool has_shadda(String word) => word.contains(Arabic.Symbols.SHADDA);

  static bool is_vocalized(String word) {
    if (isAlpha(word)) return false;
    bool isTashkeel = true;
    final letters = word.iterable(unicode: true).toList();
    for (final ch in letters) {
      if (is_tashkeel(ch)) {
        isTashkeel = false;
        break;
      }
    }
    return isTashkeel;
  }

  static bool is_vocalizedtext(String text) =>
      Arabic.Symbols.HARAKAT_PATTERN.hasMatch(text);

  static String strip_harakat(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Arabic.Symbols.HARAKAT.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_tashkeel(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Arabic.Symbols.TASHKEEL.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_diacritics(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Arabic.Symbols.DIACRITICS.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_tatweel(String text) =>
      text.replaceAll(RegExp(Arabic.TATWEEL, unicode: true), "");

  static String strip_shadda(String text) =>
      text.replaceAll(RegExp(Arabic.Symbols.SHADDA, unicode: true), "");

  static String normalize_ligature(String text) =>
      text.replaceAll(Arabic.LIGUATURES_PATTERN, "${Arabic.LAM}${Arabic.ALEF}");

  static String normalize_letters(String text) {
    String nstring = text;
    Arabic.LETTERS_NORM_MAP_REG.forEach((key, value) {
      nstring = nstring.replaceAll(key, value);
    });
    return nstring;
  }

  static String normalize_hamza(String text,
      {String method = ArOp.METHOD_UNIFORM}) {
    String nstring = text;
    if (method == ArOp.METHOD_TASHEEL) {
//       Alefat to Alef
      nstring = nstring.replaceAll(RegExp(Arabic.ALEF_MADDA), Arabic.ALEF);
      nstring =
          nstring.replaceAll(RegExp(Arabic.ALEF_HAMZA_ABOVE), Arabic.ALEF);
      nstring =
          nstring.replaceAll(RegExp(Arabic.ALEF_HAMZA_BELOW), Arabic.ALEF);
      nstring = nstring.replaceAll(RegExp(Arabic.HAMZA_ABOVE), Arabic.ALEF);
      nstring = nstring.replaceAll(RegExp(Arabic.HAMZA_BELOW), Arabic.ALEF);
//       on Waw
      nstring = nstring.replaceAll(RegExp(Arabic.WAW_HAMZA), Arabic.WAW);
//       on Yeh
      nstring = nstring.replaceAll(RegExp(Arabic.YEH_HAMZA), Arabic.YEH);
    } else {
      List<String> parts = nstring.split(" ");
      for (var i = 0; i < parts.length; i++) {
        var part = parts[i];
        if (part.startsWith(RegExp(Arabic.ALEF_MADDA))) {
          if (part.length >= 3 &&
              Arabic.Symbols.HARAKAT.contains(part[1]) == false &&
              (part[2] == Arabic.Symbols.SHADDA || part.length == 3)) {
            part = "${Arabic.HAMZA}${Arabic.ALEF}${part.substring(1)}";
          } else {
            part = "${Arabic.HAMZA}${Arabic.HAMZA}${part.substring(1)}";
          }
        }
        part = part.replaceAll(
            RegExp(Arabic.ALEF_MADDA), "${Arabic.HAMZA}${Arabic.HAMZA}");
        part = part.replaceAll(Arabic.HAMZAT_PATTERN, Arabic.HAMZA);

        parts[i] = part;
      }
      nstring = parts.join(" ");
    }
    return nstring;
  }

  static String normalize_alef(String text) {
    String nstring = text;
    nstring = nstring.replaceAll(
        RegExp(Arabic.SMALL_ALEF + Arabic.ALEF_MAKSURA), Arabic.ALEF_MAKSURA);
    nstring = nstring.replaceAll(
        RegExp(Arabic.ALEF_MAKSURA + Arabic.SMALL_ALEF), Arabic.ALEF_MAKSURA);
    nstring = nstring.replaceAll(Arabic.ALEFAT_PATTERN, Arabic.ALEF);
    return nstring;
  }
}
