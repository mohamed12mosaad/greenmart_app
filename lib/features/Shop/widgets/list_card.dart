import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.list});

  final ProductModel list;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        list.image,
        width: 60,
        height: 60,
      ),
      title: Text(
        list.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        list.quantity,
        style: TextStyle(
          color: AppColors.geryColor
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            list.price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 8,),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}