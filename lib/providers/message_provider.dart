import 'package:first_project/data/models/message_model.dart';
import 'package:first_project/data/repositories/message_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/services/message_service.dart';

final messageServiceProvider = Provider<MessageService>((ref) {
  return MessageService();
});


final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  final service = ref.read(messageServiceProvider);
  return MessageRepository(service);
});

class MessageListNotifier extends StateNotifier<AsyncValue<List<MessageModel>>>{
final MessageRepository _repository;

  MessageListNotifier(this._repository) : super(const AsyncValue.loading()) {
    fetchMessages();
  }

    Future<void> fetchMessages() async {
    try {
      state = const AsyncValue.loading();
      final messages = await _repository.getMessages();
      state = AsyncValue.data(messages);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final messageListProvider = StateNotifierProvider<MessageListNotifier, AsyncValue<List<MessageModel>>>((ref){
  final repository = ref.watch(messageRepositoryProvider);
  return MessageListNotifier(repository);
});