import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/constants/app_image.dart';
import 'package:greenmart_app/core/constants/functions/navigations.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/core/styles/widgets/main_button.dart';
import 'package:greenmart_app/features/Shop/Page/shop_sceen.dart';
import 'package:greenmart_app/features/details/widget/checkout_bottom_sheet.dart';
import 'package:greenmart_app/features/home/data/product_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        leading: IconButton(
          onPressed: () {
            PopTo(context, ShopSceen());
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImage.shareSvg, height: 20),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(45),
              child: Image.network(model.image),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(model.name, style: AppTextStyles.title),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(model.quantity, style: AppTextStyles.caption),
                    ),
                    trailing: IconButton(
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_rounded,
                        color: AppColors.geryColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.remove, color: AppColors.primaryColors),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              2.toString(),
                              style: AppTextStyles.body.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      Spacer(),
                      Text('\$4.99', style: AppTextStyles.title),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 40, indent: 22, endIndent: 22, thickness: 2),
            ExpansionTile(
              title: Text(
                'Product Detail',
                style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              childrenPadding: EdgeInsets.zero,
              children: [
                Text(
                  'Apples are nutritious. Apples may be good for weight\n loss. apples may be good for your heart. As part of A\n healtful and varied diet.',
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.geryColor,
                  ),
                ),
              ],
            ),
            Divider(height: 40, indent: 22, endIndent: 22, thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nutritions',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.lightGreyColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '100gr',
                          style: AppTextStyles.caption.copyWith(
                            color: const Color(0xff7C7C7C),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 28, indent: 22, endIndent: 22, thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 24,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Color(0xffF3603F)),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        style: IconButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: MainButton(
          textStyle: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          text: 'Add To Cart',
          onPress: () {
            ShowCheckoutBottomSheet(context);
          },
        ),
      ),
    );
  }
}
