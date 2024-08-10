import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_cubiq/business/entities/message_entity.dart';
import 'package:teste_cubiq/presenter/ui/atoms/file_bubble.dart';
import 'package:teste_cubiq/presenter/ui/atoms/message_bubble.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class MessagesList extends StatelessWidget {
  final ScrollController scrollController;
  final List<MessageEntity> messages;
  const MessagesList({super.key, required this.messages, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundSecondaryColor,
      child: ListView.builder(
        controller: scrollController,
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 36.0, left: 16),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return messages[index].type == MessageType.text
              ? MessageBubble(
                  sender: messages[index].sender,
                  message: messages[index].text,
                  time: DateFormat('HH:mm').format(messages[index].dateTime),
                  isSentByMe: messages[index].isSentByMe,
                )
              : FileBubble(
                  sender: messages[index].sender,
                  message: messages[index].text,
                  time: DateFormat('HH:mm').format(messages[index].dateTime),
                  isSentByMe: messages[index].isSentByMe,
                );
        },
      ),
    );
  }
}
