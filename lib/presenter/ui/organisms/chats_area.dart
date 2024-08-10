import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_cubit.dart';
import 'package:teste_cubiq/business/cubits/chat/chat_mock.dart';
import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/presenter/ui/atoms/icon_colored_button.dart';
import 'package:teste_cubiq/presenter/ui/atoms/search_field.dart';
import 'package:teste_cubiq/presenter/ui/atoms/text_with_border_button.dart';
import 'package:teste_cubiq/presenter/ui/molecules/chats_list.dart';
import 'package:teste_cubiq/presenter/utils.dart';

enum ChatTypeSelected { all, unread, finished }

class ChatsArea extends StatefulWidget {
  final bool isMobile;
  const ChatsArea({super.key, required this.isMobile});

  @override
  State<ChatsArea> createState() => _ChatsAreaState();
}

class _ChatsAreaState extends State<ChatsArea> {
  final TextEditingController _searchController = TextEditingController();
  ChatTypeSelected _chatTypeSelected = ChatTypeSelected.all;

  void changeChatTypeSelected(ChatTypeSelected chatTypeSelected) {
    setState(() {
      _chatTypeSelected = chatTypeSelected;
    });
    context.read<ChatCubit>().getChats(chatTypeSelected, _searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return !widget.isMobile
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            color: AppColors.backgroundColor,
            width: 392,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
                border: Border(
                  right: BorderSide(color: AppColors.borderColor, width: 0.4),
                  bottom: BorderSide(color: AppColors.borderColor, width: 1.9),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 4, bottom: 16.0, top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Conversas',
                          style: AppTextStyles.pageTitleStyle,
                        ),
                        IconColoredButton(
                          backgroundColor: AppColors.backgroundSecondaryColor,
                          iconUrl: 'icons/Icon-7.svg',
                        ),
                      ],
                    ),
                  ),
                  SearchField(
                    controller: _searchController,
                    onChanged: (value) => context.read<ChatCubit>().getChats(_chatTypeSelected, value),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWithBorderButton(
                          qtdChats: 0,
                          isSelected: _chatTypeSelected == ChatTypeSelected.all,
                          label: 'Todas',
                          onPressed: () => changeChatTypeSelected(ChatTypeSelected.all),
                        ),
                        const SizedBox(width: 24.0),
                        BlocBuilder<ChatCubit, ChatState>(
                          builder: (context, state) {
                            return TextWithBorderButton(
                              qtdChats: context.read<ChatCubit>().notRead.toDouble(),
                              isSelected: _chatTypeSelected == ChatTypeSelected.unread,
                              label: 'Não lidas',
                              onPressed: () => changeChatTypeSelected(ChatTypeSelected.unread),
                            );
                          },
                        ),
                        const SizedBox(width: 24.0),
                        TextWithBorderButton(
                          qtdChats: 0,
                          isSelected: _chatTypeSelected == ChatTypeSelected.finished,
                          label: 'Encerradas',
                          onPressed: () => changeChatTypeSelected(ChatTypeSelected.finished),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(child: ChatsList()),
                  const SizedBox(height: 8.0),
                ],
              ),
            ))
        : Column(
            children: [
              SearchField(
                controller: _searchController,
                onChanged: (value) => context.read<ChatCubit>().getChats(_chatTypeSelected, value),
              ),
              const Expanded(
                child: ChatsList(),
              ),
            ],
          );
  }
}
