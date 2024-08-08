import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: const Color(0xFF667085),
          filled: true,
          fillColor: AppColors.textWhiteColor,
          hintText: 'Pesquisar...',
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
    );
  }
}
