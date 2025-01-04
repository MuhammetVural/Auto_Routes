
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

@freezed

class TodoModel with _$TodoModel {
  factory TodoModel({
    required String id,
    required String title,
    @Default(false) bool isComplated,
  }) = _TodoModel;
}