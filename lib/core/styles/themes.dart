import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/app_fonts.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
      fontFamily: AppFonts.Poppins,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColors,
        onSurface: AppColors.blackColor,
      ),
      dividerColor: Colors.transparent,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          minimumSize: Size.zero,
          foregroundColor: AppColors.primaryColors,
        )
      ),
      inputDecorationTheme: InputDecorationThemeData(
        fillColor: AppColors.accentColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
      ),
      hintStyle: AppTextStyles.caption.copyWith(color: AppColors.blackNormalColor,),
      ),
      appBarTheme: AppBarThemeData(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.primaryColors,
        unselectedItemColor: AppColors.blackColor,
        selectedLabelStyle: AppTextStyles.small.copyWith(fontWeight: FontWeight.w600, height: 1.8),
        unselectedLabelStyle: AppTextStyles.small.copyWith(fontWeight: FontWeight.w600, height: 1.8),
      ),
      scaffoldBackgroundColor: AppColors.whiteColor,
    );
}