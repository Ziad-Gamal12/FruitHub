import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg.dart';

class Customfilterwidget extends StatelessWidget {
  const Customfilterwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5.5),
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey.shade300, width: 1)),
      child: SvgPicture.asset(Assets.assetsImagesFIlterIcon2),
    );
  }
}
