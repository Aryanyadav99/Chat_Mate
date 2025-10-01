import 'package:flutter/material.dart';

class AuthSwitchPrompt extends StatelessWidget {
  final String command;
  final String destination;
  final VoidCallback onTap;
  const AuthSwitchPrompt({super.key, required this.command, required this.destination, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          command,
          style: TextStyle(color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap:onTap,
          child: Text(
            destination,
            style: TextStyle(
              color: Color(0xFF00BFA6),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
