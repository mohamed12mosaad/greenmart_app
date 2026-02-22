import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class BuildCardItem extends StatelessWidget {
  final ProductModel model;

  const BuildCardItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        children: [
          Image.network(
            model.image,
            width: 70,
            height: 70,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.shopping_basket, size: 50, color: Colors.grey),
          ),
          const SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.name,
                      style: AppTextStyles.body.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                      },
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.close, color: Color(0xffB1B1B1), size: 22),
                    ),
                  ],
                ),
                Text(
                  model.quantity,
                  style: AppTextStyles.caption.copyWith(color: AppColors.geryColor),
                ),
                const SizedBox(height: 15),

                Row(
                  children: [
                    _quantityIconButton(Icons.remove, isPrimary: false, onPressed: () {}),
                    const SizedBox(width: 15),
                    const Text(
                      '1',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(width: 15),
                    _quantityIconButton(Icons.add, isPrimary: true, onPressed: () {}),
                    const Spacer(),
                    Text(
                      model.price,
                      style: AppTextStyles.body.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _quantityIconButton(IconData icon, {required bool isPrimary, required VoidCallback onPressed}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          size: 20,
          color: isPrimary ? AppColors.primaryColors : const Color(0xffB1B1B1),
        ),
      ),
    );
  }
}