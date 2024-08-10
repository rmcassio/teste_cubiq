import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/atoms/chat_avatar.dart';
import 'package:teste_cubiq/presenter/ui/atoms/icon_colored_button.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatHeader extends StatelessWidget {
  final String chatName;
  final String url;

  const ChatHeader({super.key, required this.chatName, required this.url});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isHalfScreen = constraints.maxWidth <= 550;

      return Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          border: Border(
            bottom: BorderSide(color: AppColors.borderColor, width: 0.5),
          ),
        ),
        height: isHalfScreen ? 130 : 98,
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ChatAvatar(url: url),
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
                  if (!isHalfScreen)
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
              if (isHalfScreen)
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
    });
  }
}
