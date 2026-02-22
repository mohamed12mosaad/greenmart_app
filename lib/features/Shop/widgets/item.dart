import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/Shop/Page/beverages.dart';
import 'package:greenmart_app/features/home/data/product.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.card,
  });

  final Product card;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        if (card.name == 'Beverages') {
          pushTo(context, const Beverages());
        } 
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 170,
        width: 160,
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: card.color,
          border: Border.all(color: card.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                card.image,
                height: 110,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              card.name,
              textAlign: TextAlign.center,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}