import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class Customproductsappbar extends StatelessWidget {
  const Customproductsappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          S.of(context).products,
          style:
              textStyles.textstyle19.copyWith(color: const Color(0xff0C0D0D)),
        ),
        const Spacer(),
      ],
    );
  }
}
