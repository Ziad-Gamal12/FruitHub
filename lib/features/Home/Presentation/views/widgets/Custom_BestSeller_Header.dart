// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomBestsellerHeader extends StatelessWidget {
  const CustomBestsellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "الأكثر مبيعًا",
          style: textStyles.textstyle16.copyWith(
              fontWeight: FontWeight.bold, color: const Color(0xff0C0D0D)),
        ),
        Text(
          "المزيد",
          style: textStyles.textstyle13.copyWith(
              fontWeight: FontWeight.w400, color: const Color(0xff949D9E)),
        ),
      ],
    );
  }
}
