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

//send message
final class SendingMessageState extends ChatState {}

final class MessageSentState extends ChatState {
  final List<MessageEntity> messages;

  MessageSentState({required this.messages});
}

final class MessageErrorState extends ChatState {
  final String message;
  MessageErrorState(this.message);
}

//receive message
final class ReceivingMessageState extends ChatState {}

final class MessageReceivedState extends ChatState {
  final List<MessageEntity> messages;
  MessageReceivedState(this.messages);
}

final class MessageReceivedErrorState extends ChatState {
  final String message;
  MessageReceivedErrorState(this.message);
}

//selected chat
final class SelectedChatState extends ChatState {
  final ChatEntity chat;
  SelectedChatState(this.chat);
}

//read chat
final class ReadChatState extends ChatState {
  final int index;
  ReadChatState(this.index);
}
