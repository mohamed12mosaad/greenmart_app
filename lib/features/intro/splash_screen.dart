import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/features/intro/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void initState () {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      pushReplacement(context, WelcomeScreen());
    });
  
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Center(
        child: 
        SvgPicture.asset(AppImage.logoSvg, ),
      ),
    );
  }
}