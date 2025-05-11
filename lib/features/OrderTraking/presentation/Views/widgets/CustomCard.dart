import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30, top: 19, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: child,
    );
  }
}
