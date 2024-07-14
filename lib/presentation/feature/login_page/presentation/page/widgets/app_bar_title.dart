import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login to your account',
      style: TextStyle(
        color: Colors.green,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
