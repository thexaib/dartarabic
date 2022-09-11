import 'package:dartarabic/dartarabic.dart';

void main() async {
  String output = "";
  final stopwatch = Stopwatch();
  //Use Isolates for heavy computation

  stopwatch.reset();
  stopwatch.start();
  // output = DartArabic.stripHarakat("الْعَرَبِيّةُ");
  output = "الْعَرَبِيّةُ".stripHarakat();

  print("stripHarakat ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  //output = DartArabic.stripTashkeel("الْعَرَبِيّةُُ");
  output = "الْعَرَبِيّةُُ".stripTashkeel();

  print("stripTashkeel ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  //output = DartArabic.stripShadda("الشّمسيّة");
  output = "الشّمسيّة".stripShadda();
  print("stripShadda ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  //output = DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ");
  output = "ﻻنحالي ﻷﻹﻵ".normalizeLigature();

  print("normalizeLigature ${stopwatch.elapsedMilliseconds}ms: $output");

  stopwatch.reset();
  stopwatch.start();
  //output = DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا");
  output = "جاء سؤال الأئمة عن الإسلام آجلا".normalizeHamzaUniform();

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

  // Accessing Characters string
  print(Arabic.ALEF);
  print(Arabic.BEH);
  print(Arabic.TEH);
  print(Arabic.Symbols.QUESTION);
  print(Arabic.Symbols.SEMICOLON);
  print(Arabic.Symbols.SHADDA);
  print(Arabic.NAMES);


}
