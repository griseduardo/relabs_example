import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class HeaderIcons extends StatelessWidget {
  const HeaderIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 40),
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.library_add_rounded,
                color: Colors.white,
                size: 40,
              ),
            ]
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.cyan.shade50,
                  width: 2,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  "./lib/assets/brazil.png",
                ),
                backgroundColor: Colors.transparent,
                radius: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

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

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            RememberCheckbox(),
            SizedBox(width: 5),
            Text(
              'Remember-me',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: () { },
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              child: const Text(
                'Password Recovery',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )
      ]
    );
  }
}

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

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

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

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.cyan.shade50,
          child: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.cyan.shade700,
            size: 16,
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.cyan.shade50,
          child: FaIcon(
            FontAwesomeIcons.xTwitter,
            color: Colors.cyan.shade700,
            size: 16,
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.cyan.shade50,
          child: FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.cyan.shade700,
            size: 16,
          ),
        ),
      ],
    );
  }
}

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: HeaderIcons()),
                    Title(),
                    SizedBox(height: 30),
                    FormTextField(placeholder: 'Email'),
                    SizedBox(height: 30),
                    FormTextField(placeholder: 'Password'),
                    SizedBox(height: 30),
                    LoginOptions(),
                    SizedBox(height: 30),
                    LoginButton(),
                    SizedBox(height: 30),
                    LoginDivider(),
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
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.cyan.shade700,
      ),
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./lib/assets/login-bg.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: const MyHomePage(),
      )
    );
  }
}
