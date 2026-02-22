import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/custem_password_form_field.dart';
import 'package:greenmart_app/core/styles/widgets/custem_text_form_fielf.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/page/number_screen.dart';
import 'package:greenmart_app/features/page/sign%20up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final FormKey = GlobalKey <FormState> ();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Form(
              key: FormKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImage.carrotSvg),
                  ),
                  SizedBox(height: 40),
                  Text('Login', style: AppTextStyles.title),
                  SizedBox(height: 16),
                  Text(
                    'Enter your email and password',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.geryColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Email',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.geryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    enabled: true,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'example@gmail.com',
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'Please enter your e-mail';
                      }else if (!value.contains('@')  && !value.contains('gmail') && !value.contains('.com')){
                        return 'Please enter a valid e-mail';
                      }
                      return null;
                    },
                    ),
                  SizedBox(height: 40),
                  Text(
                    'Password',
                    style: AppTextStyles.caption.copyWith(
                      color: AppColors.geryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomPasswordFormField(
                    keyboardType: TextInputType.visiblePassword,
                    hintText: '*************',
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'please enter your password';
                      }else if (value.length < 6){
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: AppTextStyles.caption.copyWith(color: AppColors.blackColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  MainButton(
                    text: 'Log In',
                    onPress: () {
                      if (FormKey.currentState!.validate()){
                        pushTo(context, NumberScreen());
                      }
                    },
                    textStyle: AppTextStyles.body.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: AppTextStyles.caption.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          pushTo(context, SinghupScreen());
                        },
                        child: Text(
                          'Singup',
                          style: AppTextStyles.caption.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
