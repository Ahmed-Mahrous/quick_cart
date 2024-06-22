import 'package:flutter/material.dart';
import '../../core/utlis/app_colors.dart';
import '../../core/utlis/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, scrolledUnderElevation: 0),
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          backgroundColor: Colors.white,
          elevation: 2,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.primary,
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(color: AppColors.primary),
          selectedIconTheme: IconThemeData(color: AppColors.primary)),
      iconTheme: IconThemeData(color: AppColors.primary),
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      fontFamily: AppStrings.fontFamily,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.mainTextColor),
      ));
}
