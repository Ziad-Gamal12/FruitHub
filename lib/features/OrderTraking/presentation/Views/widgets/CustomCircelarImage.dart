import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Customcircelarimage extends StatelessWidget {
  const Customcircelarimage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xffEBF9F1),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
