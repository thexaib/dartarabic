# Changelog

## 0.1.3
- New Characters in `Arabic.Symbols`:
  - `List<string>`: ALL_COMBINING_MARKS
  - **&#1622;** COMBINING_MARK_SUBSCRIPT_ALEF
  - **&#1623;** COMBINING_MARK_INVERTED_DAMMA
  - **&#1624;** COMBINING_MARK_NOON_GHUNNA
  - **&#1625;** COMBINING_MARK_ZWARAKAY
  - **&#1626;** COMBINING_MARK_VOWEL_SIGN_V_ABOVE
  - **&#1627;** COMBINING_MARK_VOWEL_SIGN_INVERTED_V_ABOVE
  - **&#1628;** COMBINING_MARK_VOWEL_SIGN_DOT_BELOW
  - **&#1629;** COMBINING_MARK_REVERSE_DAMMA
  - **&#1630;** COMBINING_MARK_FATHA_TWO_DOTS
  - **&#1631;**  COMBINING_MARK_HAMZA_BELOW_WAVY = '\u065f'
  
## 0.1.2
- New Characters in `Arabic.Symbols`  :
  ```
  QURAN_ANNOTATION_SMALL_FATHA = '\u0618'
  QURAN_ANNOTATION_SMALL_DAMMA = '\u0619'
  QURAN_ANNOTATION_SMALL_FATHA = '\u0618'
  FORMAT_CHARACTER_MARK = '\u061c'
  FORMAT_CHARACTER_EMPTY_CELL = '\u061d'
  HONORIFIC_SALLALLAHU_TOP_SIGN = '\u0610'
  HONORIFIC_ALAYHE_SALAM_TOP_SIGN = '\u0611'
  HONORIFIC_RAHMATULLAH_TOP_SIGN = '\u0612'
  HONORIFIC_RADI_ALLAH_TOP_SIGN = '\u0613'
  HONORIFIC_TAKHALLUS_TOP_SIGN = '\u0614'
  ```
## 0.1.1+1
- readme.md fixed
## 0.1.1
- docs and showcase added to readme
## 0.1.0
- sound Null-safety 
- [New] `Arabic.IKHFA_BEFORE_LETTERS`, `Arabic.Symbols.UTHMANI_STOP_SEEN_HIGH`
- removed `unicode_data` dependency. migrated to full null-safety.
- [Breaking] Marks,Numbers and symbols in `Arabic` class now should be  accessed as `Arabic.Symbols`.

## 0.0.1-nullsafety.0
- migrated to null-safety
## 0.0.1-dev6
- Added normalizeLetters
## 0.0.1-dev5
- `stripHarakat` now also removes SKUN_Curvy and Sukun Rounded marks
- Arabic class available containing Arabic Letters and numbers
## 0.0.1-dev4
- code formatted
## 0.0.1-dev3
- Example usage added.
- [Breaking] normalizeHamza changed to two normalizeHamzaUniform and normalizeHamzaTasheel methods.
## 0.0.1-dev2
- Added normalizeAlef
## 0.0.1-dev1
- Implemented:
    - stripHarakat
    - stripTashkeel
    - stripDiacritics
    - stripTatweel
    - stripShadda
    - normalizeLigature
    - normalizeHamza