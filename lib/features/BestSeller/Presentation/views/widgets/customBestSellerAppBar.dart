// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomArrowBackWIdget.dart';

class Custombestsellerappbar extends StatelessWidget {
  const Custombestsellerappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomArrowBackWIdget(),
        Text(
          "الأكثر مبيعًا",
          style: textStyles.textstyle19,
        ),
      ],
    );
  }
}
