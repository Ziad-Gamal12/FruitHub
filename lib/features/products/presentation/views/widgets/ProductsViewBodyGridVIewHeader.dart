import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomFilterWidget.dart';

class Productsviewbodygridviewheader extends StatelessWidget {
  const Productsviewbodygridviewheader({super.key, required this.resluteCount});
  final int resluteCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$resluteCount نتائج",
          style: textStyles.textstyle16.copyWith(
              fontWeight: FontWeight.bold, color: const Color(0xff0C0D0D)),
        ),
        const Spacer(),
        const Customfilterwidget()
      ],
    );
  }
}
