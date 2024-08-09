import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: ClipOval(
        child: Image.asset(
          'images/avatar.jpeg',
          width: 48.0,
          height: 48.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
