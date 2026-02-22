import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:greenmart_app/core/styles/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 67,
    required this.onPress,
    this.background = AppColors.primaryColors,
    this.textStyle,
  });

  final String text;
  final double width;
  final double height;
  final Function () onPress;
  final Color background;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(width, height),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: textStyle?? AppTextStyles.body,
      ),
    );
  }
}
