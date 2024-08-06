import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatHeader extends StatelessWidget {
  final String chatName;

  const ChatHeader({super.key, required this.chatName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
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
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(chatName),
                    const Text('Tempo restante na janela 24 horas'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
