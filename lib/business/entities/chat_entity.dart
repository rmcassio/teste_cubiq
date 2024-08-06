enum ChatType { read, unread, finished }

class ChatEntity {
  final String name;
  final String imageUrl;
  final String lastMesasage;
  final DateTime lastMessageTime;
  final ChatType type;

  ChatEntity({
    required this.name,
    required this.imageUrl,
    required this.lastMesasage,
    required this.lastMessageTime,
    required this.type,
  });
}
