import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

void showSnackBar(
    {required String message,
    required BuildContext context,
    Color? color,
    Color? textColor}) {
  final snackBar = SnackBar(
    content: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        message,
        style: textStyles.textstyle11.copyWith(
            color: textColor ?? Colors.black, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    ),
    backgroundColor: color ?? Colors.grey.shade200,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
