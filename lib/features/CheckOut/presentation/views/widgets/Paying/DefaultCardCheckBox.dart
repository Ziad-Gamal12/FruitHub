import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomCheckBox.dart';

class Defaultcardcheckbox extends StatelessWidget {
  const Defaultcardcheckbox({super.key, required this.onchanged});
  final ValueChanged<bool> onchanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(onChanged: onchanged),
        const SizedBox(
          width: 16,
        ),
        Text(
          "جعل البطاقة افتراضية",
          style: textStyles.textstyle13.copyWith(
              color: const Color(0xff616A6B), fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
