import 'package:flutter/material.dart';

class AppColors {
  static Color get messageColor => const Color(0xFFF2F4F7);
  static Color get myMessageColor => const Color(0xFF155EEF);
  static Color get backgroundColor => const Color(0xFFF9FAFB);
  static Color get backgroundSecondaryColor => const Color(0xFFFFFFFF);
  static Color get borderColor => const Color(0xFFE4E7EC);
  static Color get iconButtonColor => const Color(0xFF2E90FA);
  static Color get actionButtonColor => const Color(0xFF246BE6);
  static Color get headerButtonsColor => const Color(0xFF475467);
  static Color get sideBarButtonsColor => const Color(0xFF667085);
  static Color get textPrimaryColor => const Color(0xFF101828);
  static Color get textSecondaryColor => const Color(0xFF344054);
  static Color get textTertiaryColor => const Color(0xFF475467);
  static Color get textQuartiaryColor => const Color(0xFFD0D5DD);
  static Color get textWhiteColor => const Color(0xFFFFFFFF);
}

class AppTexts {
  static double get pageTitleSize => 30;
  static double get chatTitleSize => 24;
  static double get extraSmallSize => 12;
  static double get mediumTextSize => 16;
  static double get smallTextSize => 14;
}

class AppTextStyles {
  static TextStyle get chatLineTitleStyle => TextStyle(
        fontSize: AppTexts.extraSmallSize,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimaryColor,
      );

  static TextStyle get chatLineStyle => TextStyle(
        fontSize: AppTexts.extraSmallSize,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiaryColor,
      );

  static TextStyle get chatTitleStyle => TextStyle(
        fontSize: AppTexts.chatTitleSize,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondaryColor,
      );

  static TextStyle get chatsubTitleStyle => TextStyle(
        fontSize: AppTexts.mediumTextSize,
        fontWeight: FontWeight.w400,
        color: AppColors.sideBarButtonsColor,
      );

  static TextStyle get pageTitleStyle => TextStyle(
        fontSize: AppTexts.pageTitleSize,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondaryColor,
      );

  static TextStyle get messageTitleStyle => TextStyle(
        fontSize: AppTexts.smallTextSize,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondaryColor,
      );

  static TextStyle get messageSubtitleStyle => TextStyle(
        fontSize: AppTexts.extraSmallSize,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiaryColor,
      );

  static TextStyle get messageStyle => TextStyle(
        fontSize: AppTexts.mediumTextSize,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryColor,
      );

  static TextStyle get myMessageStyle => TextStyle(
        fontSize: AppTexts.mediumTextSize,
        fontWeight: FontWeight.w500,
        color: AppColors.textWhiteColor,
      );
}
