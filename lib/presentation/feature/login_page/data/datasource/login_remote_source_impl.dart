import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:task_manager_app/core/failure/failure.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/datasource/i_login_remote_source.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/models/user_model/user_model.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';
import 'package:task_manager_app/services/https_services/https_services.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

class LoginRemoteSourceImpl implements ILoginRemoteSource {
  final sharedPreferencesService = getIt<SharedPreferencesService>();

  @override
  Future<Either<Failure, UserModel>> loginUser(
    String email,
    String password,
  ) async {
    try {
      final request = getIt<HttpsServices>();

      final response = await request.post(
        'auth/login',
        data: {
          'username': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = UserModel.fromJson(response.data!);

        log('Token: ${data.token}');

        await saveToken(data.token!);

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
      ///
      return const Left(
        Failure.customError(message: 'An error occurred while logging in.'),
      );
    }
  }

  @override
  Future<void> saveToken(String userToken) async {
    return sharedPreferencesService.put(
      key: 'user_token',
      value: userToken,
    );
  }
}
