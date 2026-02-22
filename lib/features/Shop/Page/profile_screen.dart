import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/Shop/widgets/acout_option_item.dart';
import 'package:greenmart_app/features/intro/splash_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileHeader(),
              const Divider(thickness: 1, color: Color(0xffE2E2E2)),
              AccountOptionItem(
                title: 'Orders',
                iconPath: AppImage.orderSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'My Details',
                iconPath: AppImage.detailSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'Delivery Address',
                iconPath: AppImage.locationSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'Payment Methods',
                iconPath: AppImage.paymentSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'Promo Cord',
                iconPath: AppImage.promoSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'Notifications',
                iconPath: AppImage.bellSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'Help',
                iconPath: AppImage.questionSvg,
                onTap: () {},
              ),
              AccountOptionItem(
                title: 'About',
                iconPath: AppImage.aboutSvg,
                onTap: () {},
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SizedBox(
          width: double.infinity,
          height: 67,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffF2F3F2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            onPressed: () {
              pushReplacement(context, SplashScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.logout_rounded,
                  color: AppColors.primaryColors,
                  size: 22,
                ),
                const SizedBox(width: 15),
                Text(
                  'Log Out',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color(0xffF2F3F2),
            backgroundImage: AssetImage(AppImage.profile),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mohamed Mosaad',
                      style: AppTextStyles.title.copyWith(fontSize: 20),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.edit_outlined,
                      color: AppColors.primaryColors,
                      size: 20,
                    ),
                  ],
                ),
                Text(
                  'mohamed@gmail.com',
                  style: AppTextStyles.body.copyWith(
                    color: const Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
