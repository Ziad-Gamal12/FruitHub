import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CustomRatingSummary extends StatelessWidget {
  const CustomRatingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "4.5",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SvgPicture.asset(Assets.assetsImagesStarIcon),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "88%",
          style: textStyles.textstyle16
              .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(
          S.of(context).Recommended,
          style: textStyles.textstyle11
              .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ],
    );
  }
}
