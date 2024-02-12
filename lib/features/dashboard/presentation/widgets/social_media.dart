import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialMedia extends StatelessWidget {
  final IconData icon;
  final String username;
  const SocialMedia({super.key, required this.icon, required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1), shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 20,
                // color: Colors.white,
              )),
        ),
        SizedBox(width: 5),
        Text(
          username,
        ),
      ],
    );
  }
}
