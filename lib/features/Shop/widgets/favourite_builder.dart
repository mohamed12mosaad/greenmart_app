import 'package:flutter/material.dart';
import 'package:greenmart_app/features/Shop/widgets/list_card.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class FavouriteBuilder extends StatelessWidget {
  const FavouriteBuilder({
    super.key, this.list,
  });

  final ProductModel? list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return ListCard(list: allProduct[index],);
      },
      separatorBuilder: (context, index) => Divider(color: Color(0xffE2E2E2), height: 30,),
      itemCount: allProduct.length,
    );
  }
}