# Dart Arabic

Parsing Arabic text in Dart
(Partial) Port of PyArabic `https://github.com/linuxscout/pyarabic`

## Usage
Import `'package:dartarabic/dartarabic.dart'` and access the static methods in `DartArabic` class

## Methods
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
- [spellingNumber](#spellingNumber)

## stripHarakat
Strip Harakat from arabic word except Shadda.
The striped marks are :
- FATHA, DAMMA, KASRA
- SUKUN
- FATHATAN, DAMMATAN, KASRATAN

Example:
```
print(DartArabic.stripHarakat("الْعَرَبِيّةُ"));
```
or
```
print("الْعَرَبِيّةُ".stripHarakat());
```
Outputs: `العربيّة`

## stripTashkeel
Strip vowels from a text, include Shadda. The striped marks are :
- FATHA, DAMMA, KASRA
- SUKUN
- SHADDA
- FATHATAN, DAMMATAN, KASRATAN

Example:
```
print(DartArabic.stripTashkeel("الْعَرَبِيّةُُ"));
```
or 
```
print("الْعَرَبِيّةُُ".stripTashkeel());
```
Outputs: `العربية`



## stripDiacritics
Strip arabic diacritics from a text. The striped marks are :
- Small Alef 
- Harakat + Shadda
- Quranic marks
- Extended arabic diacritics

Example:
```
print(DartArabic.stripDiacritics("الْعَرَبِيّةُُ"));
```
or 
```
print("الْعَرَبِيّةُُ".stripDiacritics());
```
Outputs: `العربية`


## stripTatweel
 Strip tatweel from a text and return a result text.
Example:
```
print(DartArabic.stripTatweel("العـــــربيةُ"));
```
or
```
print("العـــــربيةُ".stripTatweel());
```
Outputs: `العربيةُ`



## stripShadda
 Strip Shadda from a text and return a result text.

Example:
```
print(DartArabic.stripShadda("الشّمسيّة"));
```
or 
```
print("الشّمسيّة".stripShadda());
```
Outputs: `الشمسية`


## normalizeLigature
Normalize Lam Alef ligatures into two letters (LAM and ALEF),and and return a result text. Some systems present lamAlef ligature as a single letter, this function convert it into two letters, The converted letters into  LAM and ALEF are :
- LAM_ALEF
- LAM_ALEF_HAMZA_ABOVE
- LAM_ALEF_HAMZA_BELOW
- LAM_ALEF_MADDA_ABOVE
        
Example:
```
print(DartArabic.normalizeLigature("ﻻنحالي ﻷﻹﻵ"));
```
or 
```
print("ﻻنحالي ﻷﻹﻵ".normalizeLigature());
```
Outputs: `لانحالي لالالا`


## normalizeHamzaUniform
Standardize the Hamzat into one form of hamza(uniform method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا"));
```
or
```
print("جاء سؤال الأئمة عن الإسلام آجلا".normalizeHamzaUniform());
```
Outputs: `جاء سءال الءءمة عن الءسلام ءءجلا`


## normalizeHamzaTasheel
Standardize the Hamzat into one form of hamza(Tasheel method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا"));
```
or
```
print("جاء سؤال الأئمة عن الإسلام آجلا".normalizeHamzaTasheel());
```
Outputs: `جاء سوال الايمة عن الاسلام اجلا`


## normalizeAlef
Converts all alefs to ALEF_MAMDODA with the exception of Alef maksura

Example:
```
print(DartArabic.normalizeAlef("بِٱلْهُدَىٰ"));
```
or
```
print("بِٱلْهُدَىٰ".normalizeAlef());
```
Outputs: `بِالْهُدَا`

## normalizeLetters
converts non standard letter characters to single letters. e.g HEH_START ﻫ is converted to ه

Example:
```
print(DartArabic.normalizeLetters("ﻫﻞ"));
```
or 
```
print("ﻫﻞ".normalizeLetters());
```
Outputs: `هل`

## spellingNumber
Convert number to ordinal words.

Example:
```
print(DartArabic.spellingNumber(1125));
```
or
```
print(1125.spellingNumber());
```
Outputs: `ألف ومائة وخمسة وعشرون`
