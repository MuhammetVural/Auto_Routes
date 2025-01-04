import 'package:first_project/data/models/message_model.dart';
import 'package:first_project/data/services/message_service.dart';

class MessageRepository {

  final MessageService _messageService;

  MessageRepository(this._messageService);

  Future<List<MessageModel>> getMessages() async{
    return await _messageService.fetchMessages();
  }
}