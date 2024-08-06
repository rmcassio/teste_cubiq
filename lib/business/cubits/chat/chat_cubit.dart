import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/business/entities/message_entity.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  void getChats() {}

  void getMessages() {}
}
