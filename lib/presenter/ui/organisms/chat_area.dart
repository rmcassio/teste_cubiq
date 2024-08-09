import 'package:flutter/material.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_mock.dart';
import 'package:teste_cubiq/presenter/ui/molecules/chat_header.dart';
import 'package:teste_cubiq/presenter/ui/molecules/input_area.dart';
import 'package:teste_cubiq/presenter/ui/molecules/messages_list.dart';

class ChatArea extends StatelessWidget {
  const ChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatHeader(chatName: 'Amanda de Castro Moreira'),
        Expanded(
          child: MessagesList(
            messages: messagesMock,
          ),
        ),
        SizedBox(
          height: 140,
          child: InputArea(),
        ),
      ],
    );
  }
}
