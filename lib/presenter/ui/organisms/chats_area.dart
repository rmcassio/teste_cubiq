import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/atoms/search_field.dart';
import 'package:teste_cubiq/presenter/ui/molecules/chats_list.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatsArea extends StatelessWidget {
  final bool isMobile;
  const ChatsArea({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return !isMobile
        ? Container(
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
                  right: BorderSide(color: AppColors.borderColor, width: 0.5),
                  bottom: BorderSide(color: AppColors.borderColor, width: 2),
                ),
              ),
              margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: const Column(
                children: [
                  SearchField(),
                  Expanded(child: ChatsList()),
                ],
              ),
            ),
          )
        : const Column(
            children: [
              SearchField(),
              Expanded(child: ChatsList()),
            ],
          );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Card with Custom Shadow'),
    ),
    body: Center(
      child: Material(
        elevation: 8.0, // Shadow strength
        shadowColor: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            border: Border(
              top: BorderSide(color: Colors.blue, width: 2.0),
              right: BorderSide(color: Colors.blue, width: 2.0),
              bottom: BorderSide(color: Colors.blue, width: 2.0),
              left: BorderSide.none, // No border on the left
            ),
          ),
          child: Center(
            child: Text('Custom Card'),
          ),
        ),
      ),
    ),
  );
}
