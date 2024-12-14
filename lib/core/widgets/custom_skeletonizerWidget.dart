import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomSkeletonizerwidget extends StatelessWidget {
  const CustomSkeletonizerwidget(
      {super.key, required this.child, required this.enabled});
  final Widget child;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: enabled,
      child: child,
    );
  }
}
