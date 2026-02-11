import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffix,
    this.prefix,
    this.keyboardType,
    this.validator,
  });

  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefix: prefix,
        suffix: suffix,
      ),
      validator: validator,
    );
  }
}
