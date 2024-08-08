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
                  right: BorderSide(color: Colors.black.withOpacity(0.4), width: 0.5),
                  bottom: BorderSide(color: Colors.black.withOpacity(0.4), width: 2),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0).copyWith(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Conversas',
                          style: AppTextStyles.pageTitleStyle,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  const SearchField(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Todas button
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: AppColors.backgroundSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                            child: Text('Todas'),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: AppColors.backgroundSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: AppColors.iconButtonColor, width: 2),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                            child: Text('Não Lidas'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: AppColors.backgroundSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                            child: Text('Encerradas'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(child: ChatsList()),
                ],
              ),
            ))
        : const Column(
            children: [
              SearchField(),
              Expanded(child: ChatsList()),
            ],
          );
  }
}
