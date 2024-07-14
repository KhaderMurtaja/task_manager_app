import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(null) AllTodosModel? allTodos,
    @Default(null) Todo? todo,
    @Default(false) bool fetchSuccess,
    @Default(false) bool hasMore,
    @Default('') String errorMessage,
    @Default(false) bool loading,
    @Default(false) bool loadingMoreTasks,
    @Default(false) bool noMoreTasks,
    @Default(false) bool taskAdded,
    @Default(false) bool taskEdited,
    @Default(false) bool taskDeleted,
  }) = _TodoState;

  factory TodoState.initial() => const TodoState();
}
