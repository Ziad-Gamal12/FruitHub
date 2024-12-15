import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomArrowBackWIdget extends StatelessWidget {
  const CustomArrowBackWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
