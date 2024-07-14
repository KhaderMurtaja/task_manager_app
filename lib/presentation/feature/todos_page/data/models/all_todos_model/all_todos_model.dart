import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'all_todos_model.freezed.dart';
part 'all_todos_model.g.dart';

@freezed
class AllTodosModel with _$AllTodosModel {
  const factory AllTodosModel({
    List<Todo>? todos,
    int? total,
    int? skip,
    int? limit,
  }) = _AllTodosModel;

  factory AllTodosModel.fromJson(Map<String, dynamic> json) =>
      _$AllTodosModelFromJson(json);
}

@freezed
class Todo with _$Todo {
  const factory Todo({
    int? id,
    String? todo,
    bool? completed,
    int? userId,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
