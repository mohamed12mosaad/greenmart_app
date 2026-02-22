import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';
import 'package:greenmart_app/features/home/data/dummy_data.dart';
 

class DummyCard extends StatelessWidget {
  const DummyCard({super.key, required this.item});

  final DummyData item; 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.accentColor),
        boxShadow: [
          BoxShadow(
            color: AppColors.accentColor,
            blurRadius: 4,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                item.image,
                height: 110,
                errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.broken_image, size: 50, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            item.name,
            style: AppTextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            item.quantity,
            style: AppTextStyles.caption.copyWith(
              color: AppColors.geryColor,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                item.price,
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              FloatingActionButton.small(
                heroTag: UniqueKey(),
                elevation: 0,
                backgroundColor: AppColors.primaryColors,
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}