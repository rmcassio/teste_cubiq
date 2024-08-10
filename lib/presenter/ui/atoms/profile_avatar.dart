import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      menuPadding: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.all(4),
      offset: const Offset(55, -10),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      tooltip: '',
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor, width: 1),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: ClipOval(
                child: Image.asset(
                  'images/avatar.jpeg',
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -2,
            right: 3,
            child: Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: AppColors.textQuartiaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
              ),
            ),
          ),
        ],
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            padding: const EdgeInsets.only(
              left: 6,
              right: 2,
            ),
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
                  style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.sideBarButtonsColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
