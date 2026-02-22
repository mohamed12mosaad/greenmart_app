import 'package:flutter/material.dart';
import 'package:greenmart_app/features/Shop/widgets/dummy_card.dart';
import 'package:greenmart_app/features/home/data/dummy_data.dart';

class DummyProductBuilder extends StatelessWidget {
  const DummyProductBuilder({super.key, required this.Produts});

  final List <DummyData> Produts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return DummyCard(item: Produts[index]);
      },
      itemCount: Produts.length,
    );
  }
}