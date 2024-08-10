import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatLine extends StatelessWidget {
  final ChatEntity chat;

  const ChatLine({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 40,
            width: 40,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor, width: 1),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: ClipOval(
                child: Image.asset(
                  chat.imageUrl,
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(chat.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: AppTextStyles.chatLineTitleStyle),
                    Text(
                      DateFormat('HH:mm').format(chat.lastMessageTime),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: chat.type == ChatType.unread
                          ? TextStyle(
                              fontSize: AppTexts.extraSmallSize,
                              fontWeight: FontWeight.w700,
                              color: AppColors.iconButtonColor,
                            )
                          : TextStyle(
                              fontSize: AppTexts.extraSmallSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textQuartiaryColor,
                            ),
                    ),
                  ],
                ),
                Text(
                  chat.lastMesasage,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.chatLineStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
