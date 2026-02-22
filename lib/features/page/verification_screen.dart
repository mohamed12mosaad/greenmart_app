import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/core/styles/widgets/pin_put.dart';
import 'package:greenmart_app/features/main/main_app_screen.dart';
import 'package:greenmart_app/features/page/number_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<VerificationScreen> {
  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: TextButton(
          onPressed: () {
            PopTo(context, NumberScreen());
          },
          child: Icon(Icons.arrow_back_ios_new, color: AppColors.blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Form(
            key: FormKey,
            autovalidateMode: AutovalidateMode.onUnfocus,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Text(
                  'Enter verification code',
                  style: AppTextStyles.title.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'We have sent SMS to: 01xxxxxxxxx',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.geryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40),
                PinPut(
                  length: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the verification code';
                    } else if (value.length < 5) {
                      return 'The code is incomplete';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Resend OTP',
                      style: AppTextStyles.body.copyWith(
                        color: AppColors.TangoNormalColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Change Phone Number',
                      style: AppTextStyles.body.copyWith(
                        color: AppColors.geryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                MainButton(
                  text: 'Confirm',
                  onPress: () {
                    if (FormKey.currentState!.validate()) {
                      pushReplacement(context, MainAppScreen());
                    }
                  },
                  textStyle: AppTextStyles.body.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
