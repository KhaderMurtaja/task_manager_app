import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/models/user_model/user_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, UserModel>> loginUser(String email, String password);

  Future<void> saveToken(String token);
}
