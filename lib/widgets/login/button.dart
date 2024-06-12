import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent.shade100),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 15)),
          ),
          onPressed: () { },
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.green.shade800,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ]
    );
  }
}
