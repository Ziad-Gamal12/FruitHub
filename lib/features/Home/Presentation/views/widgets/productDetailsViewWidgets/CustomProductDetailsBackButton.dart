import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomProductDetailsBackButton extends StatelessWidget {
  const CustomProductDetailsBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: SvgPicture.asset(Assets.assetsImagesArrowleft),
      ),
    );
  }
}
