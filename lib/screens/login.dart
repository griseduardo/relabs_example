import 'package:flutter/material.dart';

import 'package:relabs_example/widgets/login/sign_up_link.dart';
import 'package:relabs_example/widgets/login/form_divider.dart';
import 'package:relabs_example/widgets/login/social_media_icons.dart';
import 'package:relabs_example/widgets/login/button.dart';
import 'package:relabs_example/widgets/login/options.dart';
import 'package:relabs_example/widgets/login/form_text_field.dart';
import 'package:relabs_example/widgets/login/form_title.dart';
import 'package:relabs_example/widgets/login/header_icons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./lib/assets/login-bg.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: HeaderIcons()),
                      FormTitle(),
                      SizedBox(height: 30),
                      FormTextField(placeholder: 'Email'),
                      SizedBox(height: 30),
                      FormTextField(placeholder: 'Password'),
                      SizedBox(height: 30),
                      Options(),
                      SizedBox(height: 30),
                      Button(),
                      SizedBox(height: 30),
                      FormDivider(),
                      SizedBox(height: 30),
                      SocialMediaIcons(),
                      Expanded(child: SignUpLink())
                    ],
                  ),
                ),
              ]
            ),
          )
        )
      )
    );
  }
}
