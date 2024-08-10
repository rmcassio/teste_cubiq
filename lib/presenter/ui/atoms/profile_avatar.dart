import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      menuPadding: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(4),
      offset: const Offset(55, -25),
      color: Colors.white,
      tooltip: '',
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: ClipOval(
              child: Image.asset(
                'images/avatar.jpeg',
                width: 48.0,
                height: 48.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 2,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: AppColors.textQuartiaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            padding: EdgeInsets.only(left: 6),
            enabled: false,
            value: 1,
            height: 46,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Modo Offline',
                  style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.textPrimaryColor, fontSize: 12),
                ),
                Text(
                  '60 min. restantes',
                  style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.textQuartiaryColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
