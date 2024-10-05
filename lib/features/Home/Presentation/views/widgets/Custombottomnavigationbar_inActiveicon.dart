import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class Custombottomnavigationbar_inActiveicon extends StatelessWidget {
  const Custombottomnavigationbar_inActiveicon(
      {super.key, required this.inactiveIconPath});
  final String inactiveIconPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(inactiveIconPath);
  }
}
