import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final bool isSentByMe;

  const MessageBubble({
    required this.sender,
    required this.message,
    required this.time,
    required this.isSentByMe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius getBorderRadius() {
      return isSentByMe
          ? const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            )
          : const BorderRadius.only(
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Align(
        alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                    child: Text(
                      sender,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.messageTitleStyle,
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width > 1200) const SizedBox(width: 5.0),
                  if (MediaQuery.sizeOf(context).width > 1200)
                    Text(
                      time,
                      style: AppTextStyles.messageSubtitleStyle,
                    ),
                ],
              ),
            ),
            if (MediaQuery.sizeOf(context).width < 1200) const SizedBox(width: 5.0),
            if (MediaQuery.sizeOf(context).width < 1200)
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: AppTextStyles.messageSubtitleStyle,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 5.0),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.symmetric(vertical: 2.0),
              decoration: BoxDecoration(
                border: isSentByMe ? Border.all(color: AppColors.myMessageColor) : Border.all(color: AppColors.borderColor),
                color: !isSentByMe ? AppColors.messageColor : AppColors.myMessageColor,
                borderRadius: getBorderRadius(),
              ),
              child: Text(
                message,
                style: !isSentByMe ? AppTextStyles.messageStyle : AppTextStyles.myMessageStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
