import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';
import 'package:task_manager_app/presentation/feature/todos_page/domain/usecases/todo_usecase.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_event.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_state.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState.initial()) {
    on<AddTodo>((event, emit) async {
      final todo = Todo(
        id: state.allTodos != null && state.allTodos!.todos != null
            ? state.allTodos!.todos!.length + 100
            : 100,
        todo: event.todo,
        completed: event.completed,
      );

      if (state.allTodos != null) {
        final currentState = state.allTodos!;
        final updatedTodosList = List<Todo>.from(currentState.todos!)
          ..add(todo);
        final updatedTodosModel =
            currentState.copyWith(todos: updatedTodosList);

        final prefs = await SharedPreferences.getInstance();
        final todosJson = jsonEncode(updatedTodosModel.toJson());
        await prefs.setString('todos', todosJson);

        emit(
          TodoState(
            allTodos: updatedTodosModel,
            hasMore: currentState.total! > updatedTodosList.length,
            fetchSuccess: true,
          ),
        );
      }
    });

    on<DeleteTodo>((event, emit) async {
      final result = await getIt<TodoUsecase>().deleteTodo(event.todoId);

      if (state.allTodos != null) {
        final copyTodosList = state.allTodos!.todos;
        final updatedTodosList = copyTodosList!.where((todo) {
          return todo.id != event.todoId;
        }).toList();

        final updatedTodosModel =
            state.allTodos!.copyWith(todos: updatedTodosList);

        emit(
          TodoState(
            allTodos: updatedTodosModel,
            fetchSuccess: true,
          ),
        );
      }
    });

    on<GetSingleTodo>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
          errorMessage: '',
          fetchSuccess: false,
        ),
      );

      final result = await getIt<TodoUsecase>().getSingleTodo(
        event.todoId,
      );

      result.fold(
        (left) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: left.message!,
              fetchSuccess: false,
            ),
          );
        },
        (right) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: '',
              fetchSuccess: true,
            ),
          );
        },
      );
    });

    on<GetAllTodos>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
          errorMessage: '',
          fetchSuccess: false,
        ),
      );

      final result = await getIt<TodoUsecase>().getTodosWithPagination(
        event.skip,
      );

      result.fold(
        (left) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: left.message!,
              fetchSuccess: false,
            ),
          );
        },
        (right) {
          /// Store the fetched todos in SharedPreferences
          final prefs = SharedPreferences.getInstance();
          final todosJson = jsonEncode(right.toJson());
          prefs.then((value) => value.setString('todos', todosJson));

          /// Check if there will be more todos to fetch from the server
          final hasMore = right.total! > right.todos!.length;
          emit(
            state.copyWith(
              loading: false,
              errorMessage: '',
              fetchSuccess: true,
              hasMore: hasMore,
              allTodos: right,
            ),
          );
        },
      );
    });

    on<GetTodosByUserId>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
          errorMessage: '',
          fetchSuccess: false,
        ),
      );

      final result = await getIt<TodoUsecase>().getTodosByUserId(
        event.userId,
      );

      result.fold(
        (left) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: left.message!,
              fetchSuccess: false,
            ),
          );
        },
        (right) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: '',
              fetchSuccess: true,
              allTodos: right,
            ),
          );
        },
      );
    });

    on<GetTodosWithPagination>((event, emit) async {
      if (state.hasMore) {
        emit(
          state.copyWith(
            loadingMoreTasks: true,
            errorMessage: '',
            fetchSuccess: false,
          ),
        );

        final result = await getIt<TodoUsecase>().getTodosWithPagination(
          event.skip,
        );

        result.fold(
          (left) {
            emit(
              state.copyWith(
                loadingMoreTasks: false,
                errorMessage: left.message!,
                fetchSuccess: false,
              ),
            );
          },
          (right) {
            /// Store the fetched todos in SharedPreferences
            final prefs = SharedPreferences.getInstance();
            final todosJson = jsonEncode(right.toJson());
            prefs.then((value) => value.setString('todos', todosJson));

            /// Check if there will be more todos to fetch from the server
            final hasMore = right.total! > right.todos!.length;
            final copyTodosList = state.allTodos!.todos;
            final updatedTodosList = List<Todo>.from(copyTodosList!)
              ..addAll(right.todos!);

            final updatedTodosModel = state.allTodos!.copyWith(
              todos: updatedTodosList,
              total: right.total,
            );

            emit(
              state.copyWith(
                loadingMoreTasks: false,
                errorMessage: '',
                fetchSuccess: true,
                hasMore: hasMore,
                allTodos: updatedTodosModel,
              ),
            );
          },
        );
      }
    });

    on<UpdateTodoCompletedStatus>((event, emit) async {
      final result = await getIt<TodoUsecase>().updateTodoCompletedStatus(
        event.todoId,
        completed: event.completed,
      );

      result.fold(
        (left) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: left.message!,
              fetchSuccess: false,
            ),
          );
        },
        (right) {
          if (state.allTodos != null) {
            final copyTodosList = state.allTodos!.todos;
            final updatedTodosList = copyTodosList!.map((todo) {
              if (todo.id == event.todoId) {
                return todo.copyWith(completed: event.completed);
              }
              return todo;
            }).toList();

            final updatedTodosModel =
                state.allTodos!.copyWith(todos: updatedTodosList);

            emit(
              TodoState(
                allTodos: updatedTodosModel,
                fetchSuccess: true,
              ),
            );
          }
        },
      );
    });

    on<GetTodosOffline>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final String? todosJson = prefs.getString('todos');

      if (todosJson != null) {
        final todosMap = jsonDecode(todosJson) as Map<String, dynamic>;
        final todos = AllTodosModel.fromJson(todosMap);
        emit(
          state.copyWith(
            loading: false,
            errorMessage: '',
            fetchSuccess: true,
            allTodos: todos,
          ),
        );
      } else {
        emit(
          state.copyWith(
            loading: false,
            errorMessage: 'No todos found in SharedPreferences',
            fetchSuccess: false,
          ),
        );
      }
    });
  }
}
