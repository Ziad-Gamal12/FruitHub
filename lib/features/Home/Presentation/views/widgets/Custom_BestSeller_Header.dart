// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/BestSeller/Presentation/views/bestSellerView.dart';
import 'package:fruits/generated/l10n.dart';

class CustomBestsellerHeader extends StatelessWidget {
  const CustomBestsellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).bestSelling,
          style: textStyles.textstyle16.copyWith(
              fontWeight: FontWeight.bold, color: const Color(0xff0C0D0D)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(bestSellerView.routeName);
          },
          child: Text(
            S.of(context).moreTitle,
            style: textStyles.textstyle13.copyWith(
                fontWeight: FontWeight.w400, color: const Color(0xff949D9E)),
          ),
        ),
      ],
    );
  }
}
