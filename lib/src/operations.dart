import 'package:dartarabic/src/extensions.dart';
import 'package:string_validator/string_validator.dart';

import 'constants.dart';

class ArOp {
  static const String METHOD_UNIFORM = "uniform";
  static const String METHOD_TASHEEL = "tasheel";

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

  static String strip_shadda(String text) =>
      text.replaceAll(RegExp(Ar.SHADDA, unicode: true), "");

  static String normalize_ligature(String text) =>
      text.replaceAll(Ar.LIGUATURES_PATTERN, "${Ar.LAM}${Ar.ALEF}");

  static String normalize_hamza(String text,
      {String method = ArOp.METHOD_UNIFORM}) {
    String nstring = text;
    if (method == ArOp.METHOD_TASHEEL) {
//       Alefat to Alef
      nstring = nstring.replaceAll(RegExp(Ar.ALEF_MADDA), Ar.ALEF);
      nstring = nstring.replaceAll(RegExp(Ar.ALEF_HAMZA_ABOVE), Ar.ALEF);
      nstring = nstring.replaceAll(RegExp(Ar.ALEF_HAMZA_BELOW), Ar.ALEF);
      nstring = nstring.replaceAll(RegExp(Ar.HAMZA_ABOVE), Ar.ALEF);
      nstring = nstring.replaceAll(RegExp(Ar.HAMZA_BELOW), Ar.ALEF);
//       on Waw
      nstring = nstring.replaceAll(RegExp(Ar.WAW_HAMZA), Ar.WAW);
//       on Yeh
      nstring = nstring.replaceAll(RegExp(Ar.YEH_HAMZA), Ar.YEH);
    } else {
      List<String> parts = nstring.split(" ");
      for (var i = 0; i < parts.length; i++) {
        var part = parts[i];
        if (part.startsWith(RegExp(Ar.ALEF_MADDA))) {
          if(part.length>=3 && Ar.HARAKAT.contains(part[1])==false && (part[2]==Ar.SHADDA || part.length==3)){
            part="${Ar.HAMZA}${Ar.ALEF}${part.substring(1)}";
          }else{
            part="${Ar.HAMZA}${Ar.HAMZA}${part.substring(1)}";
          }
        }
        part= part.replaceAll(RegExp(Ar.ALEF_MADDA ), "${Ar.HAMZA}${Ar.HAMZA}");
        part=part.replaceAll(Ar.HAMZAT_PATTERN, Ar.HAMZA);

        parts[i]= part;
      }
      nstring=parts.join(" ");
    }
    return nstring;
  }

  static String normalize_alef(String text){
    String nstring = text;
    nstring=nstring.replaceAll(RegExp(Ar.SMALL_ALEF+Ar.ALEF_MAKSURA), Ar.ALEF_MAKSURA);
    nstring=nstring.replaceAll(RegExp(Ar.ALEF_MAKSURA+Ar.SMALL_ALEF), Ar.ALEF_MAKSURA);
    nstring=nstring.replaceAll(Ar.ALEFAT_PATTERN, Ar.ALEF);
    return nstring;
  }

}
