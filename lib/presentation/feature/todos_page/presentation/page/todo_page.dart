import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_bloc.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_event.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_state.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/page/widgets/todo_item.dart';
import 'package:task_manager_app/router/router.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

@RoutePage()
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  /// Connection to the internet
  ConnectivityResult? connectivityResult;

  final _taskController = TextEditingController();

  final router = AppRoute();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        if (connectivityResult == ConnectivityResult.none) {
          return TodoBloc()..add(const TodoEvent.getTodosOffline());
        } else {
          return TodoBloc()..add(const TodoEvent.getAllTodos(skip: 0));
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFFC342),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFFC342).withOpacity(0.5),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi emilys',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Welcome to tasks Management',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: IconButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(10),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xffE11858),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                onPressed: () async {
                  final sharedPreferencesService =
                      getIt<SharedPreferencesService>();
                  await sharedPreferencesService.remove(key: 'user_token');

                  await Future<void>.delayed(
                    const Duration(milliseconds: 50),
                  ).whenComplete(
                    () => context.router.pushAndPopUntil(
                      const LoginRoute(),
                      predicate: (_) => false,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFFC342).withOpacity(0.5),
                Colors.white,
              ],
            ),
          ),
          child: BlocConsumer<TodoBloc, TodoState>(
            listener: (context, state) {
              if (state.errorMessage.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage),
                  ),
                );
              }
            },
            buildWhen: (previous, current) {
              return previous.allTodos != current.allTodos;
            },
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.errorMessage.isNotEmpty) {
                return Center(child: Text(state.errorMessage));
              } else if (state.allTodos == null ||
                  state.allTodos!.todos!.isEmpty) {
                return const Center(child: Text('No Todos'));
              } else {
                return GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11,
                  ),
                  itemCount: state.hasMore
                      ? state.allTodos!.todos!.length + 1
                      : state.allTodos!.todos!.length,
                  itemBuilder: (context, index) {
                    if (index == state.allTodos!.todos!.length &&
                        state.hasMore) {
                      return GestureDetector(
                        onTap: () {
                          context.read<TodoBloc>().add(
                                TodoEvent.getTodosWithPagination(
                                  skip: state.allTodos!.todos!.length,
                                ),
                              );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            color: const Color(0xffFFC342),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Load More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }

                    // Return a TodoItem for valid indices
                    final todo = state.allTodos!.todos![index];
                    return TodoItem(
                      todo: todo,
                      onChanged: (bool? value) {
                        context.read<TodoBloc>().add(
                              TodoEvent.updateTodoCompletedStatus(
                                todoId: todo.id!,
                                completed: value!,
                              ),
                            );
                      },
                      onPressed: () {
                        context
                            .read<TodoBloc>()
                            .add(TodoEvent.deleteTodo(todoId: todo.id!));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Todo deleted')),
                        );
                      },
                    );
                  },
                );
              }
            },
          ),
        ),
        floatingActionButton: BlocConsumer<TodoBloc, TodoState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context
                        .read<TodoBloc>()
                        .add(const TodoEvent.getAllTodos(skip: 0));
                  },
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff0080C5),
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () => _showAddTaskDialog(
                    context,
                    BlocProvider.of<TodoBloc>(context),
                    _taskController,
                  ),
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff523997),
                  child: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showAddTaskDialog(
    BuildContext context,
    TodoBloc todoBloc,
    TextEditingController taskController,
  ) {
    taskController.clear();
    var isCompleted = false;

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          title: const Text(
            'Add New Task',
            style: TextStyle(color: Color(0xff0080C5)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              TextField(
                controller: _taskController,
                decoration: InputDecoration(
                  hintText: 'Enter task here',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCompleted,
                    onChanged: (bool? value) {
                      isCompleted = value!;
                      (context as Element).markNeedsBuild();
                    },
                  ),
                  const Text('Completed'),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(color: Color(0xffE11858)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffFFC342),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(10),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text('Add'),
              onPressed: () {
                if (_taskController.text.isNotEmpty) {
                  todoBloc.add(
                    AddTodo(
                      todo: _taskController.text,
                      userId: 1,
                      completed: isCompleted,
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
