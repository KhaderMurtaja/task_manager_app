import 'package:flutter/material.dart';

class InputTxtField extends StatelessWidget {
  const InputTxtField({
    required this.controller,
    required this.decoration,
    super.key,
  });

  final TextEditingController controller;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller, decoration: decoration);
  }
}
