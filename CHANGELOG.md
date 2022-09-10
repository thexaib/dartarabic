# Changelog

- test case for `stripDiacritics` added
- removed `unicode_data` dependency. migrated to full null-safety.
## [0.0.1-nullsafety.0]
- migrated to null-safety
## [0.0.1-dev6]
- Added normalizeLetters
## [0.0.1-dev5]
- `stripHarakat` now also removes SKUN_Curvy and Sukun Rounded marks
- Arabic class available containing Arabic Letters and numbers
## [0.0.1-dev4]
- code formatted
## [0.0.1-dev3]
- Example usage added.
- [Breaking] normalizeHamza changed to two normalizeHamzaUniform and normalizeHamzaTasheel methods.
## [0.0.1-dev2]
- Added normalizeAlef
## [0.0.1-dev1]
- Implemented:
    - stripHarakat
    - stripTashkeel
    - stripDiacritics
    - stripTatweel
    - stripShadda
    - normalizeLigature
    - normalizeHamza