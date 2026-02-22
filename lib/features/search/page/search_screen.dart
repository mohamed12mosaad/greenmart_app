import 'package:flutter/material.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/widgets/custem_text_form_fielf.dart';
import 'package:greenmart_app/features/Shop/Page/shop_sceen.dart';
import 'package:greenmart_app/features/home/data/dummy_data.dart';
import 'package:greenmart_app/features/search/widget/filter_product_builder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchKey = '';

  @override
  Widget build(BuildContext context) {

    List<DummyData> filteredProducts = getProductsByName(searchKey);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              enabled: true,
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search Product',
              onChaged: (value) {
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        leading: TextButton(
          onPressed: () {
            PopTo(context, const ShopSceen());
          },
          child: const Icon(Icons.arrow_back_ios_new, color: AppColors.blackColor),
        ),
        actions: [
          const SizedBox(width: 10),
        ],
      ),
      body: FilterProductBuilder(products: filteredProducts),
    );
  }
}