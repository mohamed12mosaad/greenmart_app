import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/Shop/Page/explore_screen.dart';
import 'package:greenmart_app/features/Shop/widgets/all_product_builder.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            PopTo(context, ExploreScreen());
          },
          icon: Icon(Icons.arrow_back_ios_new)),
          title: Text(
            'Beverages',
            style: AppTextStyles.headline.copyWith(fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppImage.settingSvg,
                height: 20,
                colorFilter: ColorFilter.mode(
                  AppColors.blackColor,
                  BlendMode.srcIn
                ),
              ),
            ),
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AllProductBuilder(),
          ],
        ),
      ),
    );
  }
}