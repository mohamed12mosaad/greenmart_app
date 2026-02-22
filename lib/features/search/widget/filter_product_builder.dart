import 'package:flutter/material.dart';
import 'package:greenmart_app/features/Shop/widgets/dummy_product_builder.dart';
import 'package:greenmart_app/features/home/data/dummy_data.dart';

class FilterProductBuilder extends StatelessWidget {
  final List<DummyData> products;
  const FilterProductBuilder({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DummyProductBuilder(Produts: products), 
        ],
      ),
    );
  }
}