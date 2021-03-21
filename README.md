# Dart Arabic

Parsing Arabic text in Dart
(Partial) Port of PyArabic `https://github.com/linuxscout/pyarabic`

## Usage
Import `'package:dartarabic/dartarabic.dart'` and access the static methods in `DartArabic` class

## Methods
- [stripHarakat](#stripHarakat)
- [stripTashkeel](#stripTashkeel)
- [stripDiacritics](#stripDiacritics)
- [stripTatweel](#stripTatweel)
- [stripShadda](#stripShadda)
- [normalizeLigature](#normalizeLigature)
- [normalizeHamzaUniform](#normalizeHamzaUniform)
- [normalizeHamzaTasheel](#normalizeHamzaTasheel)
- [normalizeHamzaTasheel](#normalizeHamzaTasheel)

#### stripHarakat
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

#### stripTashkeel
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



#### stripDiacritics
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


#### stripTatweel
 Strip tatweel from a text and return a result text.
Example:
```
print(DartArabic.stripTatweel("العـــــربيةُ"));
```
Outputs: `العربيةُ`



#### stripShadda
 Strip Shadda from a text and return a result text.

Example:
```
print(DartArabic.stripShadda("الشّمسيّة"));
```
Outputs: `الشمسية`


#### normalizeLigature
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


#### normalizeHamzaUniform
Standardize the Hamzat into one form of hamza(uniform method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaUniform("جاء سؤال الأئمة عن الإسلام آجلا"));
```
Outputs: `جاء سءال الءءمة عن الءسلام ءءجلا`


#### normalizeHamzaTasheel
Standardize the Hamzat into one form of hamza(Tasheel method), replace Madda by hamza and alef. Replace the LamAlefs by simplified letters.

Example:
```
print(DartArabic.normalizeHamzaTasheel("جاء سؤال الأئمة عن الإسلام آجلا"));
```
Outputs: `جاء سوال الايمة عن الاسلام اجلا`


#### normalizeAlef
Converts all alefs to ALEF_MAMDODA with the exception of Alef maksura

Example:
```
print(DartArabic.normalizeAlef("بِٱلْهُدَىٰ"));
```
Outputs: `بِالْهُدَا`

