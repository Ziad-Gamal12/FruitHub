// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomNotification_Icon extends StatelessWidget {
  const CustomNotification_Icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: const Color(0xffEEF8ED),
          borderRadius: BorderRadius.circular(50)),
      child: Badge(
        alignment: Alignment.topCenter,
        child: SvgPicture.asset(Assets.assetsImagesNotification),
      ),
    );
  }
}
