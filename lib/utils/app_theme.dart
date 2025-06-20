import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_colors.dart';

class AppTheme {
  static ThemeData dartheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
    ),
    scaffoldBackgroundColor: AppColors.transparentColor,
  );
}
