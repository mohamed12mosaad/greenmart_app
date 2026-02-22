import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/Shop/Page/accepted_order.dart';

void ShowCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    enableDrag: true,
    isDismissible: true,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    backgroundColor: AppColors.whiteColor,
    builder: (context) {
      return const CheckOutBottomSheet();
    },
  );
}

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Checkout',
                style: AppTextStyles.title.copyWith(fontSize: 24),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, size: 28),
              ),
            ],
          ),
          const Divider(height: 30, thickness: 1),

          _buildOptionRow(title: 'Delivery', trailingText: 'Select Method'),
          _buildOptionRow(
            title: 'Payment',
            trailingWidget: Image.asset(AppImage.card),
          ),
          _buildOptionRow(title: 'Promo Code', trailingText: 'Pick discount'),
          _buildOptionRow(title: 'Total Cost', trailingText: '\$13.97'),

          const SizedBox(height: 20),

          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: AppTextStyles.body.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                children: [
                  const TextSpan(
                    text: 'By placing an order you agree to our\n',
                    style: AppTextStyles.body,
                  ),
                  TextSpan(
                    text: 'Terms ',
                    style: AppTextStyles.body.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(text: 'And '),
                  TextSpan(
                    text: 'Conditions',
                    style: AppTextStyles.body.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          MainButton(
            textStyle: AppTextStyles.body.copyWith(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            text: 'Place Order',
            onPress: () {
              pushReplacement(context, AcceptedOrder());
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildOptionRow({
    required String title,
    String? trailingText,
    Widget? trailingWidget,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Text(
                title,
                style: AppTextStyles.body.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              if (trailingWidget != null) trailingWidget,
              if (trailingText != null)
                Text(
                  trailingText,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
        const Divider(height: 1, thickness: 1),
      ],
    );
  }
}
