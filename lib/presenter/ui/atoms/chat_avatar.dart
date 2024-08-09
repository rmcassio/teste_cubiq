import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: ClipOval(
        child: Image.asset(
          'images/avatar.jpeg',
          width: 56.0,
          height: 56.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
