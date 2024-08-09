import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_mock.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/business/entities/message_entity.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  void getChats() async {
    emit(GettingChatsState());
    await Future.delayed(const Duration(seconds: 2));
    emit(ChatsLoadedState(chatsMock));
  }

  void getMessages() async {
    emit(GettingMessagesState());
    await Future.delayed(const Duration(seconds: 2));
    emit(MessagesLoadedState(messagesMock));
  }

  void sendMessage() async {
    emit(SendingMessageState());
    await Future.delayed(const Duration(seconds: 2));
    emit(MessageSentState());
  }

  void receiveMessage() async {
    emit(ReceivingMessageState());
    await Future.delayed(const Duration(seconds: 2));
    emit(MessageReceivedState('', '', ''));
  }
}
