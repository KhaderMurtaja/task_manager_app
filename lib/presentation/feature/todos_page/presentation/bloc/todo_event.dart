import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.addTodo({
    required String todo,
    required int userId,
    required bool completed,
  }) = AddTodo;

  const factory TodoEvent.deleteTodo({
    required int todoId,
  }) = DeleteTodo;

  const factory TodoEvent.getSingleTodo({
    required int todoId,
  }) = GetSingleTodo;

  const factory TodoEvent.getTodosByUserId({
    required int userId,
  }) = GetTodosByUserId;

  const factory TodoEvent.getAllTodos({
    required int skip,
  }) = GetAllTodos;

  const factory TodoEvent.getTodosWithPagination({
    required int skip,
  }) = GetTodosWithPagination;

  const factory TodoEvent.fetchMoreTodos() = FetchMoreTodos;

  const factory TodoEvent.updateTodoCompletedStatus({
    required int todoId,
    required bool completed,
  }) = UpdateTodoCompletedStatus;

  const factory TodoEvent.getTodosOffline() = GetTodosOffline;
}
