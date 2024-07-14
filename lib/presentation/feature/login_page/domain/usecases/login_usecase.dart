import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/models/user_model/user_model.dart';
import 'package:task_manager_app/presentation/feature/login_page/domain/repository/login_repository.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';

class LoginUsecase {
  Future<Either<Failure, UserModel>> loginUser(String email, String password) {
    return getIt<LoginRepository>().loginUser(email, password);
  }
}
