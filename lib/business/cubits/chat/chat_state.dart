part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

//get chats
final class GettingChatsState extends ChatState {}

final class ChatsLoadedState extends ChatState {
  final List<ChatEntity> chats;
  ChatsLoadedState(this.chats);
}

final class ChatsErrorState extends ChatState {
  final String message;
  ChatsErrorState(this.message);
}

//get messages
final class GettingMessagesState extends ChatState {}

final class MessagesLoadedState extends ChatState {
  final List<MessageEntity> messages;
  MessagesLoadedState(this.messages);
}

final class MessagesErrorState extends ChatState {
  final String message;
  MessagesErrorState(this.message);
}
