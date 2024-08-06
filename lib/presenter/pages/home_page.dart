import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chat_area.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chats_area.dart';
import 'package:teste_cubiq/presenter/ui/organisms/side_bar.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isHalfScreen = constraints.maxWidth <= 850;
        final bool isMobile = constraints.maxWidth <= 500;

        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: !isMobile
              ? Row(
                  children: [
                    const SideBar(),
                    if (!isHalfScreen) const ChatsArea(isMobile: false),
                    if (isHalfScreen) const Expanded(child: ChatsArea(isMobile: false)),
                    const Expanded(child: ChatArea()),
                  ],
                )
              : const ChatsArea(isMobile: true),
        );
      },
    );
  }
}
