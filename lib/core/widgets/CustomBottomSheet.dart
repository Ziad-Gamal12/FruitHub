import 'package:flutter/material.dart';

class Custombottomsheet extends StatelessWidget {
  const Custombottomsheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding:
            const EdgeInsets.only(top: 25, bottom: 50, right: 16, left: 12),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: child);
  }
}
