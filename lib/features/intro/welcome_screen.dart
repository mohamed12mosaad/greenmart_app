import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/widgets/main_button.dart';
import 'package:greenmart_app/features/page/login_screen.dart';


class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
      Stack(
        children: [
          Image.asset(AppImage.welcome, width: double.infinity, height: double.infinity, fit: BoxFit.cover,),
          Positioned(
            left: 30,
            right: 30,
            bottom: 110,
            child: Column(
              children: [
                SvgPicture.asset(AppImage.carrotSvg, colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),),
                SizedBox(height: 35,),
                Text(
                  textAlign: TextAlign.center,
                  'Welcome \nto our store',
                  style: AppTextStyles.headline.copyWith(color: AppColors.whiteColor),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: AppTextStyles.body.copyWith(color: AppColors.whiteColor),
                    ),
                    SizedBox(height: 35,),
                    MainButton(
                      text: 'Get Started',
                      background: AppColors.primaryColors,
                      onPress: () {
                        pushReplacement(context, LoginScreen());
                      },
                      textStyle: AppTextStyles.body.copyWith(color: AppColors.whiteColor),
                    )
              ],
            ),
          ),
        ],
      ) 
    );
  }

}
