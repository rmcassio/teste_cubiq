import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  final url;
  const ChatAvatar({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: ClipOval(
        child: Image.asset(
          url,
          width: 56.0,
          height: 56.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
