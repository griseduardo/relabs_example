import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white,
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or continue with",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white,
          )
        ),
      ]
    );
  }
}
