import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/pages/agirlik/agirlik_page.dart';
import 'package:first_project/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TodoPage extends HookConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);
    final notifier = ref.read(todoProvider.notifier);
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('agirlik.todo'.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Add a Task',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  notifier.addTodo(value);
                  controller.clear();
                }
              },
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, index) {
                  final todo = todos[index];
                  return ListTile(
                    title: Text(
                      todo.title,
                      style: TextStyle(
                        decoration:
                            todo.isComplated ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    leading: Checkbox(
                        value: todo.isComplated,
                        onChanged: (_) => notifier.toggleTodo(todo.id),
                        ),
                    trailing: IconButton(onPressed: () => notifier.deleteTodo(todo.id), icon: const Icon(Icons.delete)),
                  );
                },
                itemCount: todos.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
