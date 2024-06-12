import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key, required this.placeholder});
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        obscureText: placeholder == 'Email' ? false : true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          labelText: placeholder,
          labelStyle: TextStyle(
            color: Colors.cyan.shade700,
            fontWeight: FontWeight.w600,
          ),
          fillColor: Colors.cyan.shade50,
          filled: true,
        ),
      ),
    );
  }
}
