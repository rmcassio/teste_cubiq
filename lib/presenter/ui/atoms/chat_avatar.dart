import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ChatAvatar extends StatelessWidget {
  final url;
  const ChatAvatar({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 56,
          width: 56,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor, width: 1),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: ClipOval(
              child: Image.asset(
                url,
                width: 56.0,
                height: 56.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -2,
          right: 3,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.textWhiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1.5),
            ),
            child: SvgPicture.asset('icons/Icon-8.svg'),
          ),
        ),
      ],
    );
  }
}
