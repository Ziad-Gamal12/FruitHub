import 'package:flutter/material.dart';

class CustomBottomSheetHeader extends StatelessWidget {
  const CustomBottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 100,
        height: 1,
        color: Colors.black,
      ),
    );
  }
}
