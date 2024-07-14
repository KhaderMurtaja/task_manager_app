import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/presentation/feature/login_page/data/models/user_model/user_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required UserModel? userModel,
    required bool loading,
    required String errorMessage,
    required bool fetchSuccess,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        userModel: null,
        loading: false,
        errorMessage: '',
        fetchSuccess: false,
      );
}
