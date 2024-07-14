import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/datasource/i_todo_remote_source.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';
import 'package:task_manager_app/presentation/feature/todos_page/domain/repository/todo_repository.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<Either<Failure, AllTodosModel>> addTodo(
    String todo,
    int userId, {
    required bool completed,
  }) {
    return getIt<ITodoRemoteSource>().addTodo(
      todo,
      userId,
      completed: completed,
    );
  }

  @override
  Future<Either<Failure, void>> deleteTodo(int todoId) {
    return getIt<ITodoRemoteSource>().deleteTodo(todoId);
  }

  @override
  Future<Either<Failure, Todo>> getSingleTodo(int todoId) {
    return getIt<ITodoRemoteSource>().getSingleTodo(todoId);
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosByUserId(int userId) {
    return getIt<ITodoRemoteSource>().getTodosByUserId(userId);
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosWithPagination(int skip) {
    return getIt<ITodoRemoteSource>().getTodosWithPagination(skip);
  }

  @override
  Future<Either<Failure, Todo>> updateTodoCompletedStatus(
    int todoId, {
    required bool completed,
  }) {
    return getIt<ITodoRemoteSource>().updateTodoCompletedStatus(
      todoId,
      completed: completed,
    );
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosFromSharedPref() {
    return getIt<ITodoRemoteSource>().getTodosFromSharedPref();
  }

  @override
  Future<void> storeTodosInSharedPref(AllTodosModel allTodosModel) {
    return getIt<ITodoRemoteSource>().storeTodosInSharedPref(allTodosModel);
  }
}
