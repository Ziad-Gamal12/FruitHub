import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Customcircelarimage extends StatelessWidget {
  Customcircelarimage(
      {super.key, this.iconcolor, required this.image, this.avatarColor});
  final String image;
  Color? iconcolor, avatarColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: avatarColor ?? const Color(0xffEBF9F1),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(
          image,
          colorFilter: iconcolor != null
              ? ColorFilter.mode(iconcolor!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
