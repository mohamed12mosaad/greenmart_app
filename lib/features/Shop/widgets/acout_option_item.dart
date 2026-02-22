import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart_app/core/styles/text_style.dart';

class AccountOptionItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  const AccountOptionItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: SvgPicture.asset(
            iconPath,
            width: 20,
          ),
          title: Text(
            title,
            style: AppTextStyles.title.copyWith(fontSize: 18),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
        ),
        const Divider(
          thickness: 1, 
          color: Color(0xffE2E2E2), 
          indent: 15, 
          endIndent: 15,
        ),
      ],
    );
  }
}