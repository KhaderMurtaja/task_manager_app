import 'package:get_it/get_it.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/datasource/i_login_remote_source.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/datasource/login_remote_source_impl.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/repository/login_repository.dart';
import 'package:task_manager_app/presentation/feature/login_page/domain/repository/login_repository.dart';
import 'package:task_manager_app/presentation/feature/login_page/domain/usecases/login_usecase.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_bloc.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/datasource/i_todo_remote_source.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/datasource/todo_remote_source_impl.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/repository/todo_repository.dart';
import 'package:task_manager_app/presentation/feature/todos_page/domain/repository/todo_repository.dart';
import 'package:task_manager_app/presentation/feature/todos_page/domain/usecases/todo_usecase.dart';
import 'package:task_manager_app/presentation/feature/todos_page/presentation/bloc/todo_bloc.dart';
import 'package:task_manager_app/services/https_services/https_services.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> configureInjection() async {
  getIt

    /// Registering the services, HttpsServices and SharedPreferencesService
    ..registerSingleton<HttpsServices>(HttpsServices())
    ..registerSingleton<SharedPreferencesService>(SharedPreferencesService())

    /// Registering the login repository
    ..registerFactory<LoginRepository>(LoginRepositoryImpl.new)
    ..registerFactory<ILoginRemoteSource>(LoginRemoteSourceImpl.new)
    ..registerFactory<LoginUsecase>(LoginUsecase.new)
    ..registerFactory<LoginBloc>(LoginBloc.new)

    /// Registering the todos repository
    ..registerFactory<TodoRepository>(TodoRepositoryImpl.new)
    ..registerFactory<ITodoRemoteSource>(TodoRemoteSourceImpl.new)
    ..registerFactory<TodoUsecase>(TodoUsecase.new)
    ..registerFactory<TodoBloc>(TodoBloc.new);
}
