import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';

class CustomRadioWidget extends StatelessWidget {
  const CustomRadioWidget(
      {super.key,
      required this.value,
      required this.onchange,
      required this.groupValue});
  final String value;
  final String groupValue;
  final ValueChanged<String?> onchange;
  @override
  Widget build(BuildContext context) {
    return Radio(
        activeColor: AppColors.MainColor,
        value: value,
        groupValue: groupValue,
        onChanged: onchange);
  }
}
