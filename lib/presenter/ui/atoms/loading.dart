import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 28,
          width: 28,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: Color(0xFF246BE6),
            backgroundColor: Color(0xFFF2F4F7),
          ),
        ),
        SizedBox(height: 16),
        Text('Carregando...',
            style: TextStyle(
              color: Color(0xFF344054),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )),
      ],
    );
  }
}
