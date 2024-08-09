import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/atoms/chat_avatar.dart';
import 'package:teste_cubiq/presenter/ui/atoms/icon_colored_button.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatHeader extends StatelessWidget {
  final String chatName;

  const ChatHeader({super.key, required this.chatName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        border: Border(
          bottom: BorderSide(color: AppColors.borderColor),
        ),
      ),
      height: 98,
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const ChatAvatar(),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      chatName,
                      style: AppTextStyles.chatTitleStyle,
                    ),
                    const Text('Tempo restante na janela 24 horas'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconColoredButton(
                  backgroundColor: AppColors.backgroundColor,
                  iconUrl: 'icons/Icon-6.svg',
                ),
                IconColoredButton(
                  backgroundColor: AppColors.backgroundColor,
                  iconUrl: 'icons/Icon-5.svg',
                ),
                IconColoredButton(
                  backgroundColor: AppColors.backgroundColor,
                  iconUrl: 'icons/Icon-4.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
