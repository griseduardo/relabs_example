import 'package:flutter/material.dart';

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
