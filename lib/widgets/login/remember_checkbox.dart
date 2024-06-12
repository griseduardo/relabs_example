import 'package:flutter/material.dart';

class RememberCheckbox extends StatelessWidget {
  const RememberCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: Checkbox(
        checkColor: Colors.cyan.shade700,
        fillColor: WidgetStateProperty.all<Color>(Colors.cyan.shade50),
        value: true,
        onChanged: (bool? value) { },
        side: WidgetStateBorderSide.resolveWith(
              (states) => BorderSide(color: Colors.cyan.shade50),
        ),
      ),
    );
  }
}
