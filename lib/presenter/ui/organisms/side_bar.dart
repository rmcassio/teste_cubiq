import 'package:flutter/material.dart';
import 'package:teste_cubiq/presenter/ui/atoms/profile_avatar.dart';
import 'package:teste_cubiq/presenter/ui/atoms/side_bar_button.dart';
import 'package:teste_cubiq/presenter/utils.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondaryColor,
        border: BorderDirectional(end: BorderSide(color: AppColors.borderColor)),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                  width: 31.65,
                  child: Image.asset(
                    'images/logomark.png',
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SideBarButton(
                    iconUrl: 'icons/Icon.svg',
                  ),
                ),
              ],
            ),
            const ProfileAvatar()
          ],
        ),
      ),
    );
  }
}
