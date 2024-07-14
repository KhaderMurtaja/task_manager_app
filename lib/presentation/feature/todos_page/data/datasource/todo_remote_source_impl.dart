import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/datasource/i_todo_remote_source.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';
import 'package:task_manager_app/services/https_services/https_services.dart';

class TodoRemoteSourceImpl implements ITodoRemoteSource {
  @override
  Future<Either<Failure, AllTodosModel>> addTodo(
    String todo,
    int userId, {
    required bool completed,
  }) async {
    try {
      final request = HttpsServices();

      final response = await request.post(
        'todos/add',
        data: {
          'todo': todo,
          'userId': userId,
          'completed': completed,
        },
      );

      if (response.statusCode == 200) {
        final data = AllTodosModel.fromJson(response.data!);

        return Right(data);
      } else {
        return Left(
          Failure.serverError(message: response.data!['message'].toString()),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteTodo(int todoId) async {
    try {
      final request = HttpsServices();

      final response = await request.delete('todos/delete/$todoId');

      if (response.statusCode == 200) {
        return const Right(null);
      } else {
        return const Left(
          Failure.serverError(
            message: 'An error occurred while deleting todo.',
          ),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<Either<Failure, Todo>> getSingleTodo(int todoId) async {
    try {
      final request = HttpsServices();

      final response = await request.get('todos/$todoId');

      if (response.statusCode == 200) {
        final data = Todo.fromJson(response.data!);

        return Right(data);
      } else {
        return Left(
          Failure.serverError(message: response.data!['message'].toString()),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosByUserId(int userId) async {
    try {
      final request = HttpsServices();

      final response = await request.get('todos/user/$userId');

      if (response.statusCode == 200) {
        final data = AllTodosModel.fromJson(response.data!);

        return Right(data);
      } else {
        return Left(
          Failure.serverError(message: response.data!['message'].toString()),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosWithPagination(
    int skip,
  ) async {
    try {
      final request = HttpsServices();
      final response = await request.get('todos?limit=10&skip=$skip');

      if (response.statusCode == 200) {
        final data = AllTodosModel.fromJson(response.data!);

        return Right(data);
      } else {
        return Left(
          Failure.serverError(message: response.data!['message'].toString()),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while fetching todos.'),
      );
    }
  }

  @override
  Future<Either<Failure, Todo>> updateTodoCompletedStatus(
    int todoId, {
    required bool completed,
  }) async {
    try {
      final request = HttpsServices();

      final response = await request.put(
        'todos/$todoId',
        data: {
          'completed': completed,
        },
      );

      if (response.statusCode == 200) {
        final data = Todo.fromJson(response.data!);

        return Right(data);
      } else {
        return Left(
          Failure.serverError(message: response.data!['message'].toString()),
        );
      }
    } on TimeoutException {
      return const Left(
        Failure.timeout(message: 'Request timed out. Please try again.'),
      );
    } catch (e) {
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<void> storeTodosInSharedPref(AllTodosModel allTodosModel) async {
    final todosJson = jsonEncode(allTodosModel.toJson());
    await getIt<SharedPreferences>().setString('todos', todosJson);
  }

  @override
  Future<Either<Failure, AllTodosModel>> getTodosFromSharedPref() async {
    try {
      final todos = getIt<SharedPreferences>().getString('todos');

      if (todos != null) {
        final data = AllTodosModel.fromJson(
          jsonDecode(todos) as Map<String, dynamic>,
        );
        return Future.value(Right(data));
      } else {
        return Future.value(
          const Left(
            Failure.customError(message: 'No data found.'),
          ),
        );
      }
    } catch (e) {
      return Future.value(
        const Left(
          Failure.customError(message: 'An error occurred.'),
        ),
      );
    }
  }
}
