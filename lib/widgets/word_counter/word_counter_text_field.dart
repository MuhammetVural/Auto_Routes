import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../providers/word_count_notifier.dart';


class WordCounterTextField extends ConsumerWidget {
  final int maxWordCount = 1000;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentWordCount = ref.watch(wordCountProvider);
    final wordCountNotifier = ref.read(wordCountProvider.notifier);

    return Stack(
      children: [
        TextFormField(
          maxLines: 20,
          onChanged: (text) => wordCountNotifier.updateWordCount(text),
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide.none),
            contentPadding: EdgeInsets.all(26),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Start typing...',
            border: InputBorder.none
          ),
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: Text(
            '$currentWordCount / $maxWordCount',
            style: TextStyle(
              color: currentWordCount > maxWordCount ? Colors.red : const Color.fromARGB(255, 191, 166, 91),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}