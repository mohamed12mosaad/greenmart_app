import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/widgets/custem_text_form_fielf.dart';
import 'package:greenmart_app/features/Shop/widgets/item.dart';
import 'package:greenmart_app/features/home/data/product.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Find Products',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                enabled: true,
                prefixIcon: Icon(Icons.search_rounded),
                hintText: 'Search Store',
              ),
              SizedBox(height: 23),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Item (card: ProductAll[index],);
                },
                itemCount: ProductAll.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
