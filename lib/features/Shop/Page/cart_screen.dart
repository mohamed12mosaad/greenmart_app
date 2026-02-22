import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/Shop/widgets/build_card_item.dart';
import 'package:greenmart_app/features/details/widget/checkout_bottom_sheet.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return BuildCardItem(model: bestSelling[index]);
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          indent: 25,
          endIndent: 25,
          color: Color(0xffE2E2E2),
        ),
        itemCount: bestSelling.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: MainButton(
          textStyle: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          text: 'Go to Checkout',
          onPress: () {
            ShowCheckoutBottomSheet(context);
          },
        ),
      ),
    );
  }
}
