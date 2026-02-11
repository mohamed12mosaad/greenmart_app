import 'package:flutter/material.dart';
import 'package:greenmart_app/core/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/widgets/custem_text_form_fielf.dart';
import 'package:greenmart_app/core/widgets/main_button.dart';
import 'package:greenmart_app/features/page/sign%20up_screen.dart';
import 'package:greenmart_app/features/page/verification_screen.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<NumberScreen> {

  final FormKey = GlobalKey <FormState> ();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: TextButton(
          onPressed: () {
            PopTo(context, SinghupScreen());
          },
          child: Icon(Icons.arrow_back_ios_new,color: AppColors.blackColor,)),
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
                  'Enter your mobile number',
                  style: AppTextStyles.title.copyWith(
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  textAlign: TextAlign.start,
                  'We need to verify you. We will send you a \n one time verification code.',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.geryColor,
                  ),
                ),
                SizedBox(height: 40),
                CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: '01xxxxxxxxx',
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please enter number';
                    }else if (value.length != 11){
                      return 'Number must be 11 digits';
                    }else if (!value.startsWith('011') && !value.startsWith('012') && !value.startsWith('010') && !value.startsWith('015')){
                      return'Number must start three digits with 011 or 012 or \n 015 or \n 010';
                    }
                    return null;
                  },
                  ),
                SizedBox(height: 40),
                MainButton(
                  text: 'Next',
                  onPress: () {
                    if (FormKey.currentState!.validate()){
                      pushTo(context, VerificationScreen());
                    }
                  },
                  textStyle: AppTextStyles.body.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Resend confirmation code (1:23)',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
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