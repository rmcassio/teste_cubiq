import 'package:flutter/material.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_mock.dart';
import 'package:teste_cubiq/presenter/ui/atoms/chat_line.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatsList extends StatefulWidget {
  const ChatsList({super.key});

  @override
  State<ChatsList> createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ChatLine(chat: chatsMock[index]);
      },
      itemCount: chatsMock.length,
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            color: AppColors.borderColor,
          ),
        );
      },
    );
  }
}
