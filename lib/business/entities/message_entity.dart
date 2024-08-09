enum MessageType { text, file }

class MessageEntity {
  final String text;
  final String sender;
  final DateTime dateTime;
  final MessageType type;
  final bool isSentByMe;

  MessageEntity({
    required this.text,
    required this.sender,
    required this.dateTime,
    required this.type,
    required this.isSentByMe,
  });
}
