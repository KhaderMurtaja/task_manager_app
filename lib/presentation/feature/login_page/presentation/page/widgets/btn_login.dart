import 'package:flutter/material.dart';
import 'package:task_manager_app/presentation/feature/login_page/presentation/bloc/login_state.dart';

class BtnLogin extends StatelessWidget {
  const BtnLogin({
    required this.state,
    required this.onPressed,
    super.key,
  });

  final LoginState state;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20),
          ),
          backgroundColor: MaterialStateProperty.all(const Color(0xffFFC342)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: onPressed,
        child: state.loading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  strokeWidth: 2.5,
                ),
              )
            : const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 22),
                  ],
                ),
              ),
      ),
    );
  }
}
