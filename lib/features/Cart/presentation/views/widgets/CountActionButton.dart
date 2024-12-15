import 'package:flutter/material.dart';

class CountActionButton extends StatelessWidget {
  const CountActionButton({
    super.key,
    required this.buttonColor,
    required this.child,
    required this.ontap,
  });
  final Color buttonColor;
  final Icon child;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6.67),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(12)),
        child: child,
      ),
    );
  }
}
