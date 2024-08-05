import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chat_area.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chats_area.dart';
import 'package:teste_cubiq/presenter/ui/organisms/side_bar.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: const Row(
        children: [
          SideBar(),
          ChatsArea(),
          Expanded(child: ChatArea()),
        ],
      ),
    );
  }
}
