import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_cubit.dart';
import 'package:teste_cubiq/presenter/ui/atoms/chat_line.dart';
import 'package:teste_cubiq/presenter/ui/atoms/loading.dart';
import 'package:teste_cubiq/presenter/ui/organisms/chats_area.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatsList extends StatefulWidget {
  const ChatsList({super.key});

  @override
  State<ChatsList> createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {
  @override
  void initState() {
    context.read<ChatCubit>().getChats(ChatTypeSelected.all, '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      buildWhen: (previous, current) {
        if (current is GettingChatsState || current is ChatsLoadedState || current is ReadChatState) {
          return true;
        }

        return false;
      },
      builder: (context, state) {
        if (state is GettingChatsState) {
          return const Center(child: Loading());
        }

        return ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                context.read<ChatCubit>().selectChat(context.read<ChatCubit>().chats[index]);
                context.read<ChatCubit>().getMessages();
                context.read<ChatCubit>().readChat(index);
              },
              child: ChatLine(chat: context.read<ChatCubit>().chats[index]),
            );
          },
          itemCount: context.read<ChatCubit>().chats.length,
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: AppColors.borderColor,
              ),
            );
          },
        );
      },
    );
  }
}
