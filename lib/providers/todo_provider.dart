import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/todo_model.dart';

class TodoNotifier extends StateNotifier<List<TodoModel>> {
   TodoNotifier() : super([]);

   void addTodo (String title){
    state = [
      ...state,
      TodoModel(id: DateTime.now().toString(), title: title),
    ];
   }

   void toggleTodo(String id){
    state = state.map((todo){
      if (todo.id == id) {
        return todo.copyWith(isComplated: !todo.isComplated);
      }
      else { return todo;}
    }).toList();
   }

   void deleteTodo (String id){
    state = state.where((todo) => todo.id != id).toList();
   }

  }
  final todoProvider = StateNotifierProvider<TodoNotifier, List<TodoModel>>((ref) => TodoNotifier());
