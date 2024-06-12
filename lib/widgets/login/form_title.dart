import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Welcome back!',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
