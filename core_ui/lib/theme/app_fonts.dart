import 'package:core_ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class AppFonts {
  static const TextStyle bold_20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static const TextStyle bold_14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle normal_14 = TextStyle(
    color: AppColors.darkGreen,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle white_bold_14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle titleDarkThemeStyle = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );

  static const TextStyle titleLightThemeStyle = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );

  static const TextStyle bold_21 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
  );
}
