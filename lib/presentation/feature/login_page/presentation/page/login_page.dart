import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_bloc.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_event.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_state.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/page/widgets/app_bar_title.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/page/widgets/btn_login.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/page/widgets/input_txt_filed.dart';
import 'package:task_manager_app/router/router.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }

          if (state.fetchSuccess) {
            context.router.push(const TodoRoute());
          }
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFC342).withOpacity(0.5),
                    Colors.white,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/login.png',
                    width: MediaQuery.of(context).size.width / 0.5,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Login to continue using app',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InputTxtField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),

                  const SizedBox(height: 15),

                  InputTxtField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// Login Button
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return BtnLogin(
                        state: state,
                        onPressed: () {
                          FocusScope.of(context).unfocus();

                          if (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            context.read<LoginBloc>().add(
                                  LoginEvent.login(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Please enter email and password'),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
