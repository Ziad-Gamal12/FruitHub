// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class AuthAppBar extends StatelessWidget {
  AuthAppBar(
      {super.key,
      required this.appBarTitle,
      required this.onTapIcon,
      this.isBack});
  final String appBarTitle;
  final void Function() onTapIcon;
  bool? isBack;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isBack == true
              ? GestureDetector(
                  onTap: onTapIcon,
                  child: SvgPicture.asset(Assets.assetsImagesArrowleft))
              : const SizedBox(),
          const Spacer(),
          Text(
            appBarTitle,
            style: textStyles(context: context).textstyle19,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
