import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/router/router.dart';
import 'package:task_manager_app/service_locator/service_locator.dart';
import 'package:task_manager_app/services/shared_preferences/shared_preferences.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final sharedPreferencesService = getIt<SharedPreferencesService>();

  @override
  void initState() {
    super.initState();
    _checkTokenAndNavigate();
  }

  Future<void> _checkTokenAndNavigate() async {
    String? token = sharedPreferencesService.read(
      'user_token',
      null,
    );

    if (token == null) {
      // No token, navigate to the login page
      await Future<void>.delayed(
        const Duration(milliseconds: 1500),
      ).whenComplete(
        () => context.router.pushAndPopUntil(
          const LoginRoute(),
          predicate: (_) => false,
        ),
      );
    } else {
      // Token exists, navigate to the home page
      await Future<void>.delayed(
        const Duration(milliseconds: 1500),
      ).whenComplete(
        () => context.router.pushAndPopUntil(
          const TodoRoute(),
          predicate: (_) => false,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: MediaQuery.of(context).size.width / 2.5,
            ),
            const SizedBox(height: 20),
            const Text(
              'Task Manager',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFC342),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
