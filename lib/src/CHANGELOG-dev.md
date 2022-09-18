## CHANGELOG-DEV
```shell
dart pub publish --dry-run
```

## 0.1.2
- new symbols added
## 0.1.1+1
- readme.md fixed
## 0.1.1
- docs and showcase added to readme
- exported ArabicSymbol , to be included in the api documentation
## 0.1.0
- Releasing
- ADD `Arabic.Symbols.UTHMANI_STOP_SEEN_HIGH`, some documentation added
- ADDED to ArabicSymbols, the symbols which were part of `dartarabic-0.0.1-nullsafety.1` but was not committed to github
- [New] `Arabic.IKHFA_BEFORE_LETTERS` list is added. Documentation to `Arabic` classes fields added. still incomplete
- [Breaking] Marks,Numbers and symbols in `Arabic` class are now should be accessed as `Arabic.Symbols`. 
- test case for `stripDiacritics` added
- removed `unicode_data` dependency. migrated to full null-safety.
## 0.0.1-dev6
- Added normalizeLetters
- Arabic.dart: New  definitions added for letters variations 
- Example prints time consumed of method calls
## 0.0.1-dev5
- `stripHarakat` now also removes SKUN_Curvy and Sukun Rounded marks
- Arabic class available containing Arabic Letters and numbers
- Added more letters and marks to Arabic.dart
- Constant.dart and class Ar renamed to Arabic.dart
## 0.0.1-dev4