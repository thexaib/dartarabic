import 'package:dartarabic/dartarabic.dart';

void main() async {
  String output = "";
  final stopwatch = Stopwatch();
  int elapsedTime = 0;
  //Use Isolates for heavy computation

  stopwatch.reset();
  stopwatch.start();
  // output = DartArabic.stripHarakat("الْعَرَبِيّةُ");
  output = "الْعَرَبِيّةُ".stripHarakat();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripHarakat ${elapsedTime}ms: $output");

  //output = DartArabic.stripTashkeel("الْعَرَبِيّةُُ");
  output = "الْعَرَبِيّةُُ".stripTashkeel();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripTashkeel ${elapsedTime}ms: $output");

  //output = DartArabic.stripShadda("الشّمسيّة");
  output = "الشّمسيّة".stripShadda();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripShadda ${elapsedTime}ms: $output");

  //output = DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ");
  output = "ﻻنحالي ﻷﻹﻵ".normalizeLigature();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("normalizeLigature ${elapsedTime}ms: $output");

  //output = DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا");
  output = "جاء سؤال الأئمة عن الإسلام آجلا".normalizeHamzaUniform();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("normalizeHamzaUniform ${elapsedTime}ms: $output");

  //output = DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا");
  output = "جاء سؤال الأئمة عن الإسلام آجلا".normalizeHamzaTasheel();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("normalizeHamzaTasheel ${elapsedTime}ms: $output");

  //output = DartArabic.normalizeAlef("بِٱلْهُدَىٰ");
  output = "بِٱلْهُدَىٰ".normalizeAlef();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("normalizeAlef ${elapsedTime}ms: $output");

  //output = DartArabic.stripDiacritics("الْعَرَبِيّة");
  output = "الْعَرَبِيّة".stripDiacritics();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripDiacritics ${elapsedTime}ms: $output");

  //output = DartArabic.stripDiacritics("الْعَرَبِيّةُ");
  output = "الْعَرَبِيّةُ".stripDiacritics();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripDiacritics ${elapsedTime}ms: $output");

  //output = DartArabic.stripTatweel("العـــــربيةُ");
  output = "العـــــربيةُ".stripTatweel();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("stripTatweel ${elapsedTime}ms: $output");

  //output = DartArabic.normalizeLetters("ﻫﻞ");
  output = "ﻫﻞ".normalizeLetters();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("normalizeLetters ${elapsedTime}ms: $output");

  // output = DartArabic.spellingNumber(1125);
  output = 1125.spellingNumber();
  elapsedTime = stopwatch.elapsedMilliseconds - elapsedTime;
  print("spellingNumber ${elapsedTime}ms: $output");
}
