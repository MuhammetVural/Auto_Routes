

import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';


@freezed
class MessageModel with _$MessageModel{
  const factory MessageModel(
{
  required int userId,
  required int id,
  required String title,
  required String body,
}

  ) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}