import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_mock.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/business/entities/message_entity.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chats_area.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  List<MessageEntity> messages = [];
  List<ChatEntity> chats = [];
  ChatEntity? selectedChat;
  int notRead = 0;
  ChatCubit() : super(ChatInitial());

  void getChats(ChatTypeSelected chatTypeSelected, String filter) async {
    emit(GettingChatsState());
    chats.clear();

    chats.addAll(chatsMock.where(
      (element) {
        if (chatTypeSelected == ChatTypeSelected.all) {
          return true;
        } else if (chatTypeSelected == ChatTypeSelected.unread) {
          return element.type == ChatType.unread;
        } else {
          return element.type == ChatType.finished;
        }
      },
    ));

    notRead = chatsMock.where((element) => element.type == ChatType.unread).length;

    if (filter.isNotEmpty) {
      chats = chats.where((element) => element.name.toLowerCase().contains(filter.toLowerCase())).toList();
    }
    await Future.delayed(const Duration(seconds: 1));
    emit(ChatsLoadedState(chats));
  }

  void getMessages() async {
    messages.clear();
    emit(GettingMessagesState());
    messages.addAll(messagesMock);
    await Future.delayed(const Duration(seconds: 1));
    emit(MessagesLoadedState(messages));
  }

  void sendMessage(String message, String sender, DateTime dateTime, bool isSentByMe) async {
    emit(SendingMessageState());
    messages.add(MessageEntity(text: message, sender: sender, dateTime: DateTime.now(), type: MessageType.text, isSentByMe: isSentByMe));

    emit(MessageSentState(messages: messages));
    receiveMessage();
  }

  void receiveMessage() async {
    await Future.delayed(const Duration(seconds: 1));
    messages.add(MessageEntity(text: 'Mensagem recebida!', sender: 'Varys', dateTime: DateTime.now(), type: MessageType.text, isSentByMe: false));
    emit(MessageReceivedState(messages));
  }

  void selectChat(ChatEntity chat) {
    selectedChat = chat;
  }

  void readChat(int index) {
    if (notRead > 0 && chats[index].type == ChatType.unread) {
      notRead = chats.where((element) => element.type == ChatType.unread).length - 1;
    }
    chats[index].type = ChatType.read;
    emit(ReadChatState(index));
  }
}
