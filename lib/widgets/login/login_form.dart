import 'package:flutter/material.dart';

import 'package:relabs_example/client/login_user.dart';
import 'package:relabs_example/models/user.dart';
import 'package:relabs_example/widgets/login/form_text_field.dart';
import 'package:relabs_example/widgets/login/options.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  Future<User>? _futureUser;

  FutureBuilder<User> buildFutureBuilder() {
    return FutureBuilder<User>(
      future: _futureUser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Text('Usuário logado.');
        } else if (snapshot.hasError) {
          return const Text('Usuário inválido.');
        }

        return const CircularProgressIndicator();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTextField(placeholder: 'Email', controller: controller1),
          const SizedBox(height: 30),
          FormTextField(placeholder: 'Password', controller: controller2),
          const SizedBox(height: 30),
          const Options(),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.greenAccent.shade100),
                  padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(vertical: 15)),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      _futureUser = loginUser(controller1.text, controller2.text);
                    });
                  }
                },
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
          ),
          (_futureUser == null) ? const Text('') : buildFutureBuilder()
        ],
      ),
    );
  }
}
