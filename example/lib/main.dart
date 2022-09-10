import 'package:dartarabic/dartarabic.dart';

void main() async {
  String output = "";
  final stopwatch = Stopwatch();
  //Use Isolates for heavy computation

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripHarakat("الْعَرَبِيّةُ");
  print("stripHarakat ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripHarakat("الْعَرَبِيّةُ");
  print("stripHarakat ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripTashkeel("الْعَرَبِيّةُُ");
  print("stripTashkeel ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripShadda("الشّمسيّة");
  print("stripShadda ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ");
  print("normalizeLigature ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا");
  print("normalizeHamzaUniform ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا");
  print("normalizeHamzaTasheel ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.normalizeAlef("بِٱلْهُدَىٰ");
  print("normalizeAlef ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripDiacritics("الْعَرَبِيّة");
  print("stripDiacritics ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripDiacritics("الْعَرَبِيّةُ");
  print("stripDiacritics ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.stripTatweel("العـــــربيةُ");
  print("stripTatweel ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  output = DartArabic.normalizeLetters("ﻫﻞ");
  print("normalizeLetters ${stopwatch.elapsedMilliseconds}ms: $output");
}
