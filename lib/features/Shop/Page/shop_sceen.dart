import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/features/Shop/widgets/best_sellign_builder.dart';
import 'package:greenmart_app/core/styles/widgets/custem_text_form_fielf.dart';
import 'package:greenmart_app/core/styles/widgets/custome_svg_picture.dart';
import 'package:greenmart_app/features/Shop/widgets/offers_builder.dart';
import 'package:greenmart_app/features/search/page/search_screen.dart';

class ShopSceen extends StatelessWidget {
  const ShopSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: CustomSvgPicture(
            path: AppImage.logoSvg,
            color: AppColors.primaryColors,
            height: 42,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              GestureDetector(
                onTap: () {
                    pushTo(context, SearchScreen());
                  },
                child: Hero(
                  tag: 'search',
                  child: Material(
                    child: CustomTextFormField(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: 'Search Store',
                    ),
                  ),
                ),
              ),
              OffersBuilder(),
              BestSellignBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}