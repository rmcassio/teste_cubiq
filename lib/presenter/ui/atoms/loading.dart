import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(color: AppColors.iconButtonColor, strokeWidth: 2.5);
  }
}
