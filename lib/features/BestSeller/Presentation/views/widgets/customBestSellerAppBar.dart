import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomNotification_Icon.dart';
import 'package:svg_flutter/svg.dart';

class Custombestsellerappbar extends StatelessWidget {
  const Custombestsellerappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(44),
              border: Border.all(color: const Color(0xffF1F1F5), width: 1)),
          child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(Assets.assetsImagesArrowleft)),
        ),
        const Text(
          "الأكثر مبيعًا",
          style: textStyles.textstyle19,
        ),
        CustomNotification_Icon()
      ],
    );
  }
}
