import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatLine extends StatelessWidget {
  final ChatEntity chat;

  const ChatLine({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 40,
        width: 40,
        child: ClipOval(
          child: Image.asset(
            chat.imageUrl,
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(chat.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyles.chatLineTitleStyle),
      subtitle: Text(
        chat.lastMesasage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.chatLineStyle,
      ),
      trailing: Text(DateFormat('HH:mm').format(chat.lastMessageTime), maxLines: 1, overflow: TextOverflow.ellipsis),
    );
  }
}
