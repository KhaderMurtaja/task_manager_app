import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/presentation/feature/login_page/domain/usecases/login_usecase.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_event.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_state.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<Login>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
          errorMessage: '',
          fetchSuccess: false,
          userModel: null,
        ),
      );

      final result = await getIt<LoginUsecase>().loginUser(
        event.email,
        event.password,
      );

      result.fold(
        (left) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: left.message!,
              fetchSuccess: false,
              userModel: null,
            ),
          );
        },
        (right) {
          emit(
            state.copyWith(
              loading: false,
              errorMessage: '',
              fetchSuccess: true,
              userModel: right,
            ),
          );
        },
      );
    });
  }
}
