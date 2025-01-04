import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/word_counter/word_counter_text_field.dart';
@RoutePage()

class WordCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Word Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: WordCounterTextField(),
      ),
    );
  }
}