import 'package:dartarabic/extensions.dart';
import 'package:string_validator/string_validator.dart';

import 'constants.dart';

class ArOp {
  static bool is_sukun(String arab) => arab.compareTo(Ar.SUKUN) == 0;

  static bool is_shadda(String arab) => arab.compareTo(Ar.SHADDA) == 0;

  static bool is_tatweel(String arab) => arab.compareTo(Ar.TATWEEL) == 0;

  static bool is_tanwin(String arab) => Ar.TANWIN.contains(arab);

  static bool is_tashkeel(String arab) => Ar.TASHKEEL.contains(arab);

  static bool is_haraka(String arab) => Ar.HARAKAT.contains(arab);

  static bool is_shortharaka(String arab) => Ar.SHORTHARAKAT.contains(arab);

  static bool is_ligature(String arab) => Ar.LIGUATURES.contains(arab);

  static bool is_hamza(String arab) => Ar.HAMZAT.contains(arab);

  static bool is_alef(String arab) => Ar.ALEFAT.contains(arab);

  static bool is_yehlike(String arab) => Ar.YEHLIKE.contains(arab);

  static bool is_wawlike(String arab) => Ar.WAWLIKE.contains(arab);

  static bool is_teh(String arab) => Ar.TEHLIKE.contains(arab);

  static bool is_small(String arab) => Ar.SMALL.contains(arab);

  static bool is_weak(String arab) => Ar.WEAK.contains(arab);

  static bool is_moon(String arab) => Ar.MOON.contains(arab);

  static bool is_sun(String arab) => Ar.SUN.contains(arab);

  static int order(String archar) =>
      Ar.ALPHABETIC_ORDER.containsKey(archar) ? Ar.ALPHABETIC_ORDER[archar] : 0;

  static String name(String archar) =>
      Ar.NAMES.containsKey(archar) ? Ar.NAMES[archar] : "";

  static bool has_shadda(String word) => word.contains(Ar.SHADDA);

  static bool is_vocalized(String word) {
    if (isAlpha(word)) return false;
    word.iterable(unicode: true).forEach((ch) {
      if (is_tashkeel(ch)) return false;
    });
    return true;
  }

  static bool is_vocalizedtext(String text) =>
      Ar.HARAKAT_PATTERN.hasMatch(text);

  static String strip_harakat(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Ar.HARAKAT.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_tashkeel(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Ar.TASHKEEL.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_diacritics(String text) {
    if (is_vocalized(text)) {
      String nstring = text;
      Ar.DIACRITICS.forEach((element) {
        nstring = nstring.replaceAll(RegExp(element, unicode: true), "");
      });
      return nstring;
    }
    return text;
  }

  static String strip_tatweel(String text) =>
      text.replaceAll(RegExp(Ar.TATWEEL, unicode: true), "");
}