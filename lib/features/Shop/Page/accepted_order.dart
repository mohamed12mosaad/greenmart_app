import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/intro/splash_screen.dart';

class AcceptedOrder extends StatelessWidget {
  const AcceptedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(AppImage.acceptedSvg, width: 200),
            const SizedBox(height: 40),
            Text(
              'Your Order has been \n accepted',
              textAlign: TextAlign.center,
              style: AppTextStyles.title.copyWith(fontSize: 28),
            ),
            const SizedBox(height: 20),
            Text(
              'Your items has been placed and is on \n it’s way to being processed',
              textAlign: TextAlign.center,
              style: AppTextStyles.caption.copyWith(fontSize: 16),
            ),
            SizedBox(height: 70,),
            MainButton(
              textStyle: AppTextStyles.body.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              text: 'Go Tp Home',
              onPress: () {
                pushReplacement(context, SplashScreen());
              },
            ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
