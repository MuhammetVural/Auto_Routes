
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/message_provider.dart';
@RoutePage()
class MessagePage extends ConsumerWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageListState = ref.watch(messageListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: messageListState.when(
        data: (messages) {
          return ListView.builder(
            itemCount: messages.length,

            itemBuilder: (context, index) {
              final message = messages[index];
              return ListTile(
                title: Text(message.title),
                subtitle: Text(message.body, style: TextStyle(),),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Hata oluştu: $error'),
        ),
      ),
    );
  }
}