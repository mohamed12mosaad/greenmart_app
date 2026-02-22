import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/themes.dart';
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
    theme: AppTheme.light,
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
