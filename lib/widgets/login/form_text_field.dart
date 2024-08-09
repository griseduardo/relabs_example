import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key, required this.placeholder, required this.controller});
  final String placeholder;
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if(placeholder == 'Email' && (value == null || value.isEmpty || !value.contains('@'))) {
            return 'Email inválido';
          } else if(value == null || value.isEmpty) {
            return 'Senha inválida';
          } else {
            return null;
          }
        },
        obscureText: placeholder != 'Email',
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
