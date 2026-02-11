import 'package:flutter/material.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({
    super.key,
    this.hintText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.validator
  });

  final String? hintText;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefix: widget.prefix,
        hintText: widget.hintText,
        suffixIcon: 
        widget.suffix??
        IconButton(onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        }, icon: obscureText?
        Icon(Icons.visibility_off):
        Icon(Icons.remove_red_eye_rounded)
        ),
      ),
      validator: widget.validator,
    );
  }
}
