import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_cubiq/presenter/ui/atoms/buttons_pill.dart';
import 'package:teste_cubiq/presenter/ui/atoms/send_button.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class InputArea extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  final FocusNode focusNode;
  final FocusNode fieldFocus;
  const InputArea({super.key, required this.controller, required this.onPressed, required this.focusNode, required this.fieldFocus});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 16, right: 32),
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Expanded(
            child: KeyboardListener(
              onKeyEvent: (event) async {
                if (controller.text.isEmpty || controller.text.trim().isEmpty) {
                  return;
                }

                // if (event.physicalKey == PhysicalKeyboardKey.enter) {
                //   //TODO verificar
                //   onPressed();
                //   focusNode.unfocus();
                //   await Future.delayed(const Duration(milliseconds: 200));
                //   fieldFocus.requestFocus();
                // }
              },
              focusNode: focusNode,
              child: TextField(
                focusNode: fieldFocus,
                controller: controller,
                cursorColor: Colors.black,
                maxLines: null,
                minLines: 3,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textWhiteColor,
                  hintText: 'Digite uma mensagem',
                  hoverColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor, width: 1.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor, width: 1.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor, width: 1.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ButtonsPill(),
                SendButton(
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
