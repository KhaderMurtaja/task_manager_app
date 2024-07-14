import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/datasource/i_login_remote_source.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/models/user_model/user_model.dart';
import 'package:task_manager_app/presentation/feature/login_page/domain/repository/login_repository.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';

class LoginRepositoryImpl extends LoginRepository {
  @override
  Future<Either<Failure, UserModel>> loginUser(String email, String password) {
    return getIt<ILoginRemoteSource>().loginUser(email, password);
  }

  @override
  Future<void> saveToken(String token) {
    return getIt<ILoginRemoteSource>().saveToken(token);
  }
}
