import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
