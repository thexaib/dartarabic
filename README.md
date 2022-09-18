# Dart Arabic

Parsing Arabic text in Dart
(Partial) Port of PyArabic [http://github.com/linuxscout/pyarabic](https://github.com/linuxscout/pyarabic)

### [Changelog](https://pub.dev/packages/dartarabic/changelog)

## Usage
Import `'package:dartarabic/dartarabic.dart'` and access the static methods in `DartArabic` class, and `Arabic` class.

## Named Arabic Unicode Letters/Marks
Get strings of Arabic language characters by accessing `Arabic` class and `Arabic.Symbols`. for example:
```dart
print(Arabic.ALEF);
print(Arabic.BEH);
print(Arabic.TEH);
print(Arabic.Symbols.QUESTION);
print(Arabic.Symbols.SEMICOLON);
print(Arabic.Symbols.SHADDA);
```
Outputs:
```shell
ا
ب
ت
؟
؛
ّ

```
 Some helping lists/maps are also provided:
```dart
print(Arabic.NAMES);
```
Output: 
```shell
{ا: ألف, ب: باء, ت: تاء, ة: تاء مربوطة, ث: ثاء, ج: جيم, ح: حاء, خ: خاء, د: دال, ذ: ذال, ر: راء, ز: زاي, س: سين, ش: شين, ص: صاد, ض: ضاد, ط: طاء, ظ: ظاء, ع: عين, غ: غين, ف: فاء, ق: قاف, ك: كاف, ل: لام, م: ميم, ن: نون, ه: هاء, و: واو, ي: ياء, ء: همزة, ـ: تطويل, آ: ألف ممدودة, ى: ألف مقصورة, أ: همزة على الألف, ؤ: همزة على الواو, إ: همزة تحت الألف, ئ: همزة على الياء, ً: فتحتان, ٌ: ضمتان, ٍ: كسرتان, َ: فتحة, ُ: ضمة, ِ: كسرة, ّ: شدة, ْ: سكون}
```
See [Api Documentation](https://pub.dev/documentation/dartarabic/latest/) for all available fields. 
### Showcase
See all string literals at [DartArabic Showcase](https://thexaib.github.io/apps/dartarabic-showcase/)
![DartArabic Showcase](https://raw.githubusercontent.com/thexaib/dartarabic/main/images/dartarabic_showcase.png)
## DartArabic Methods
- [stripHarakat](#stripharakat)
- [stripTashkeel](#striptashkeel)
- [stripDiacritics](#stripdiacritics)
- [stripTatweel](#striptatweel)
- [stripShadda](#stripshadda)
- [normalizeLigature](#normalizeligature)
- [normalizeHamzaUniform](#normalizehamzauniform)
- [normalizeHamzaTasheel](#normalizehamzatasheel)
- [normalizeAlef](#normalizealef)
- [normalizeLetters](#normalizeletters)

### stripHarakat
Strip Harakat from arabic word except Shadda.
The striped marks are :
- FATHA, DAMMA, KASRA
- SUKUN
- FATHATAN, DAMMATAN, KASRATAN

Example:
```
print(DartArabic.stripHarakat("الْعَرَبِيّةُ"));
```
Outputs: `العربيّة`

### stripTashkeel
Strip vowels from a text, include Shadda. The striped marks are :
- FATHA, DAMMA, KASRA
- SUKUN
- SHADDA
- FATHATAN, DAMMATAN, KASRATAN

Example:
```
print(DartArabic.stripTashkeel("الْعَرَبِيّةُُ"));
```
Outputs: `العربية`



### stripDiacritics
Strip arabic diacritics from a text. The striped marks are :
- Small Alef 
- Harakat + Shadda
- Quranic marks
- Extended arabic diacritics

Example:
```
print(DartArabic.stripDiacritics("الْعَرَبِيّةُُ"));
```
Outputs: `العربية`


### stripTatweel
 Strip tatweel from a text and return a result text.
Example:
```
print(DartArabic.stripTatweel("العـــــربيةُ"));
```
Outputs: `العربيةُ`



### stripShadda
 Strip Shadda from a text and return a result text.

Example:
```
print(DartArabic.stripShadda("الشّمسيّة"));
```
Outputs: `الشمسية`


### normalizeLigature
Normalize Lam Alef ligatures into two letters (LAM and ALEF),and and return a result text. Some systems present lamAlef ligature as a single letter, this function convert it into two letters, The converted letters into  LAM and ALEF are :
- LAM_ALEF
- LAM_ALEF_HAMZA_ABOVE
- LAM_ALEF_HAMZA_BELOW
- LAM_ALEF_MADDA_ABOVE
        
Example:
```
print(DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ"));
```
Outputs: `لانحالي لالالا`


### normalizeHamzaUniform
Standardize the Hamzat into one form of hamza(uniform method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا"));
```
Outputs: `جاء سءال الءءمة عن الءسلام ءءجلا`


### normalizeHamzaTasheel
Standardize the Hamzat into one form of hamza(Tasheel method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا"));
```
Outputs: `جاء سوال الايمة عن الاسلام اجلا`


### normalizeAlef
Converts all alefs to ALEF_MAMDODA with the exception of Alef maksura

Example:
```
print(DartArabic.normalizeAlef("بِٱلْهُدَىٰ"));
```
Outputs: `بِالْهُدَا`

### normalizeLetters
converts non standard letter characters to single letters. e.g HEH_START ﻫ is converted to ه

Example:
```
print(DartArabic.normalizeLetters("ﻫﻞ"));
```
Outputs: `هل`

