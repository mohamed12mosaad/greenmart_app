import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/details/page/details_screen.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushTo(context, DetailScreen(model: model,));
      },
      child: Container(
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
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(child: Image.network(height: 110, model.image)),
            ),
            SizedBox(height: 10),
            Text(
              model.name,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              model.quantity,
              style: AppTextStyles.caption.copyWith(color: AppColors.geryColor),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  model.price,
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
                  child: Icon(Icons.add, color: AppColors.whiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
