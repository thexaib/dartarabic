import 'package:dartarabic/dartarabic.dart';
import 'package:isolate/isolate.dart';

void main() async {
  String output = "";
  output = DartArabic.stripHarakat("الْعَرَبِيّةُ");
  print("stripHarakat : $output");

  output = DartArabic.stripTashkeel("الْعَرَبِيّةُُ");
  print("stripTashkeel : $output");

  output = DartArabic.stripShadda("الشّمسيّة");
  print("stripShadda : $output");

  output = DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ");
  print("normalizeLigature : $output");

  output = DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا");
  print("normalizeHamzaUniform : $output");

  output = DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا");
  print("normalizeHamzaTasheel : $output");

  output = DartArabic.normalizeAlef("بِٱلْهُدَىٰ");
  print("normalizeAlef : $output");


  //Use Isolates for heavy computation
  final loadBalancer = await LoadBalancer.create(2, IsolateRunner.spawn);
  output = await loadBalancer.run(DartArabic.stripDiacritics, "الْعَرَبِيّةُ");
  print("stripDiacritics : $output");

  output = await loadBalancer.run(DartArabic.stripTatweel, "العـــــربيةُ");
  print("stripTatweel : $output");

}
