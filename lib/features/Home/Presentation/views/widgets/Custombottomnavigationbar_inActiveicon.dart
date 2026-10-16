// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:svg_flutter/svg.dart';

class Custombottomnavigationbar_inActiveicon extends StatelessWidget {
  const Custombottomnavigationbar_inActiveicon(
      {super.key, required this.inactiveIconPath, required this.index});
  final String inactiveIconPath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        key: index == 2 ? variables.cartKey : null,
        color: Colors.transparent,
        child: SvgPicture.asset(
          inactiveIconPath,
          fit: BoxFit.scaleDown,
        ));
  }
}
