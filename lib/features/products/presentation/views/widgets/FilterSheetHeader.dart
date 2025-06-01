import 'package:flutter/material.dart';

class FilterSheetHeader extends StatelessWidget {
  const FilterSheetHeader({super.key});

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
