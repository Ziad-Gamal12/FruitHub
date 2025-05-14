// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.onPressed,
      this.buttonColor,
      required this.text});
  final void Function() onPressed;
  final String text;
  Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54,
      minWidth: double.infinity,
      color: buttonColor ?? AppColors.MainColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyles.textstyle16
            .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
