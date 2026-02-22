import 'package:flutter/material.dart';
import 'package:greenmart_app/features/Shop/widgets/card_item.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class AllProductBuilder extends StatelessWidget {
  const AllProductBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return CardItem(item: allProduct[index]);
      },
      itemCount: allProduct.length,
    );
  }
}
