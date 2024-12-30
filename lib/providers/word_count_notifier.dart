

// Kelime sayısını yönetmek için StateNotifier
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordCountNotifier extends StateNotifier<int> {
  WordCountNotifier() : super(0);

  void updateWordCount(String text) {
    state = text.length;
  }
}

final wordCountProvider = StateNotifierProvider<WordCountNotifier, int>(
  (ref) => WordCountNotifier(),
);