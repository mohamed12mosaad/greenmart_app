import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.item});

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 160,
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.accentColor),
        boxShadow: [
          BoxShadow(
            color: AppColors.accentColor,
            blurRadius: 4,
            offset: Offset(0, 0),
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                item.image,
                height: 110,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            item.name,
            style: AppTextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            item.quantity,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.geryColor,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                item.price,
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              FloatingActionButton.small(
                heroTag: UniqueKey(),
                elevation: 0,
                backgroundColor: AppColors.primaryColors,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}