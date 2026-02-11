import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/app_fonts.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/intro/splash_screen.dart';
import 'dart:io';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: AppFonts.Poppins,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColors,
        onSurface: AppColors.blackColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
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
      scaffoldBackgroundColor: AppColors.whiteColor,
    ),
    builder: (context, child) {
      return SafeArea(
        top: false,
        bottom: Platform.isAndroid? true : false,
        child: child ?? Container(),
        );
    }
   );
  }

}
