import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart_app/core/styles/colors.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({super.key, required this.path, this.color, this.width, this.height,});

  final String path;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color != null ? ColorFilter.mode(
        AppColors.primaryColors,BlendMode.srcIn,)
        : null,
        width: width,
        height: height,
    );
  }
}
