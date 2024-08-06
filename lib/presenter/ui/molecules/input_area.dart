import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 16, right: 32),
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              maxLines: 3,
              minLines: 3,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textWhiteColor,
                hintText: 'Digite uma mensagem',
                hoverColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file)),
                ]),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
