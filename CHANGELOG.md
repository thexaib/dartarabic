# Changelog

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