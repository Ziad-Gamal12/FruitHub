// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar(
      {super.key, required this.appBarTitle, required this.onTapIcon});
  final String appBarTitle;
  final void Function() onTapIcon;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.32, top: 20, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: onTapIcon,
              child: SvgPicture.asset(Assets.assetsImagesArrowleft)),
          Text(
            appBarTitle,
            style: textStyles.textstyle19,
          )
        ],
      ),
    );
  }
}
