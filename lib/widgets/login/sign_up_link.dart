import 'package:flutter/material.dart';

class SignUpLink extends StatelessWidget {
  const SignUpLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Doesn't have an account?",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 2),
            TextButton(
              onPressed: () { },
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'Sign up.',
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ]
        )
      ],
    );
  }
}
