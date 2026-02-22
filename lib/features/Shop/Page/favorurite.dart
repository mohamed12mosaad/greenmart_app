import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/Shop/widgets/favourite_builder.dart';
import 'package:greenmart_app/features/details/widget/checkout_bottom_sheet.dart';

class FavoruriteScreen extends StatelessWidget {
  const FavoruriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Favorurite', style: AppTextStyles.title)),
      ),
      body: Column(
        children: [
          Expanded(child: FavouriteBuilder()),
          Padding(
            padding: const EdgeInsets.all(22),
            child: MainButton(
              textStyle: TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              text: 'Add All To Cart',
              onPress: () {
                ShowCheckoutBottomSheet(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
