import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/todo_model.dart';

class TodoProvider extends StateNotifier<List<TodoModel>> {
   TodoProvider() : super([]);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}