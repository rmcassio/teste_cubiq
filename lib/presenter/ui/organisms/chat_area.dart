import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_cubit.dart';
import 'package:teste_cubiq/presenter/ui/atoms/loading.dart';
import 'package:teste_cubiq/presenter/ui/molecules/chat_header.dart';
import 'package:teste_cubiq/presenter/ui/molecules/input_area.dart';
import 'package:teste_cubiq/presenter/ui/molecules/messages_list.dart';

class ChatArea extends StatefulWidget {
  const ChatArea({super.key});

  @override
  State<ChatArea> createState() => _ChatAreaState();
}

class _ChatAreaState extends State<ChatArea> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (context.read<ChatCubit>().selectedChat == null) {
          return const Center(child: Text('Bem vindo!'));
        }

        return Column(
          children: [
            BlocBuilder<ChatCubit, ChatState>(
              buildWhen: (previous, current) {
                return current is SelectedChatState || current is MessagesLoadedState;
              },
              builder: (context, state) {
                if (context.read<ChatCubit>().selectedChat == null) {
                  return const SizedBox.shrink();
                }

                return ChatHeader(
                  chatName: context.read<ChatCubit>().selectedChat?.name ?? '',
                  url: context.read<ChatCubit>().selectedChat?.imageUrl ?? '',
                );
              },
            ),
            BlocConsumer<ChatCubit, ChatState>(
              listenWhen: (previous, current) {
                return current is MessageSentState || current is MessageReceivedState || current is MessagesLoadedState;
              },
              listener: (context, state) async {
                if (state is MessagesLoadedState) {
                  await Future.delayed(const Duration(milliseconds: 100));
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent + 70, curve: Curves.easeIn, duration: Durations.short2);
                }
                if (state is MessageReceivedState) {
                  await Future.delayed(const Duration(milliseconds: 100));
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent, curve: Curves.easeIn, duration: Durations.short2);
                }
                if (state is MessageSentState) {
                  await Future.delayed(const Duration(milliseconds: 100));
                  _messageController.clear();
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent, curve: Curves.easeIn, duration: Durations.short2);
                }
              },
              buildWhen: (previous, current) {
                return current is GettingMessagesState ||
                    current is MessagesLoadedState ||
                    current is MessageSentState ||
                    current is MessageReceivedState;
              },
              builder: (context, state) {
                if (state is GettingMessagesState || state is ReadChatState) {
                  return const Expanded(child: Center(child: Loading()));
                }

                return Expanded(
                  child: MessagesList(
                    scrollController: _scrollController,
                    messages: context.read<ChatCubit>().messages,
                  ),
                );
              },
            ),
            SizedBox(
              height: 140,
              child: InputArea(
                focusNode: FocusNode(),
                fieldFocus: FocusNode(),
                controller: _messageController,
                onPressed: () {
                  if (_messageController.text.isEmpty || _messageController.text.trim().isEmpty) {
                    return;
                  }
                  context.read<ChatCubit>().sendMessage(_messageController.text, 'Operador', DateTime.now(), true);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
