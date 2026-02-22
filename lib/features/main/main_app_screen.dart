import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/widgets/custome_svg_picture.dart';
import 'package:greenmart_app/features/Shop/Page/cart_screen.dart';
import 'package:greenmart_app/features/Shop/Page/explore_screen.dart';
import 'package:greenmart_app/features/Shop/Page/favorurite.dart';
import 'package:greenmart_app/features/Shop/Page/profile_screen.dart';
import 'package:greenmart_app/features/Shop/Page/shop_sceen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  List<Widget> screens = [
    ShopSceen(),
    ExploreScreen(),
    CartScreen(),
    FavoruriteScreen(),
    ProfileScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImage.shopSvg),
                activeIcon: CustomSvgPicture(
                  path: AppImage.shopSvg,
                  color: AppColors.primaryColors,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImage.exploreSvg),
                activeIcon: CustomSvgPicture(
                  path: AppImage.exploreSvg,
                  color: AppColors.primaryColors,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImage.cartSvg),
                activeIcon: CustomSvgPicture(
                  path: AppImage.cartSvg,
                  color: AppColors.primaryColors,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImage.heartSvg),
                activeIcon: CustomSvgPicture(
                  path: AppImage.heartSvg,
                  color: AppColors.primaryColors,
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppImage.userSvg),
                activeIcon: CustomSvgPicture(
                  path: AppImage.userSvg,
                  color: AppColors.primaryColors,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
