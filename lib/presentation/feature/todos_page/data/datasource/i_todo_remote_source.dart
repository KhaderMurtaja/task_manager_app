import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';

abstract class ITodoRemoteSource {
  Future<Either<Failure, AllTodosModel>> addTodo(
    String todo,
    int userId, {
    required bool completed,
  });

  Future<Either<Failure, void>> deleteTodo(int todoId);

  Future<Either<Failure, Todo>> getSingleTodo(int todoId);

  Future<Either<Failure, AllTodosModel>> getTodosByUserId(int userId);

  Future<Either<Failure, AllTodosModel>> getTodosWithPagination(int skip);

  Future<Either<Failure, Todo>> updateTodoCompletedStatus(
    int todoId, {
    required bool completed,
  });

  Future<void> storeTodosInSharedPref(AllTodosModel allTodosModel);

  Future<Either<Failure, AllTodosModel>> getTodosFromSharedPref();
}
