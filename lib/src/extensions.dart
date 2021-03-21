import 'package:characters/characters.dart';

extension XStringIterator on String {
  /// To iterate a [String]: `"Hello".iterable()`
  /// This will use simple characters. If you want to use Unicode Grapheme
  /// from the [Characters] library, passa [chars] true.
  Iterable<String> iterable({bool unicode = false}) sync* {
    if (unicode) {
      var iterator = Characters(this).iterator;
      while (iterator.moveNext()) {
        yield iterator.current;
      }
    } else {
      for (var i = 0; i < length; i++) {
        yield this[i];
      }
    }
  }
}
