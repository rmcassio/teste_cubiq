import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/atoms/message_bubble.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundSecondaryColor,
      child: ListView(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 36.0, left: 16),
        children: const [
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Hey Olivia, can you please review the latest design when you can?',
            time: '27/07/24 | 14:18',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Sure thing, I’ll have a look today.',
            time: '27/07/24 | 14:19',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Ok',
            time: '27/07/24 | 14:22',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Have a good one!',
            time: '27/07/24 | 14:22',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Tech design requirements.pdf\n200 KB',
            time: '27/07/24 | 15:49',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Thanks!',
            time: '27/07/24 | 17:01',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Tech design requirements.pdf\n200 KB',
            time: '27/07/24 | 15:49',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Thanks!',
            time: '27/07/24 | 17:01',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Tech design requirements.pdf\n200 KB',
            time: '27/07/24 | 15:49',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Thanks!',
            time: '27/07/24 | 17:01',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Tech design requirements.pdf\n200 KB',
            time: '27/07/24 | 15:49',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Thanks!',
            time: '27/07/24 | 17:01',
            isSentByMe: false,
          ),
          MessageBubble(
            sender: 'Nome do Atendente',
            message: 'Tech design requirements.pdf\n200 KB',
            time: '27/07/24 | 15:49',
            isSentByMe: true,
          ),
          MessageBubble(
            sender: 'Amanda de Castro Moreira',
            message: 'Thanks!',
            time: '27/07/24 | 17:01',
            isSentByMe: false,
          ),
        ],
      ),
    );
  }
}
