import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/Shop/widgets/item_card.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class BestSellignBuilder extends StatelessWidget {
  const BestSellignBuilder({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: AppTextStyles.title),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: AppTextStyles.body.copyWith(
                  color: AppColors.primaryColors,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemCard(model: bestSelling[index],);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: bestSelling.length,
          ),
        ),
      ],
    );
  }
}
