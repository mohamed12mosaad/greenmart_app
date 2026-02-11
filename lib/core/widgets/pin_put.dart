import 'package:flutter/material.dart';
import 'package:greenmart_app/core/styles/colors.dart';
import 'package:pinput/pinput.dart';

class PinPut extends StatefulWidget {
  const PinPut({super.key, this.validator});

  final String? Function(String?)? validator;

  @override
  State<PinPut> createState() => _PinPutState();
}

class _PinPutState extends State<PinPut> {
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  Widget buildPinPut() {
    return Pinput(
      controller: pinController,
      length: 5,
      onCompleted: (pin) => print('Entered PIN: $pin'),
      defaultPinTheme: PinTheme(
        width: 60,
        height: 60,
        textStyle: TextStyle(fontSize: 20, color: AppColors.blackColor),
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: widget.validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPinPut();
}
}
