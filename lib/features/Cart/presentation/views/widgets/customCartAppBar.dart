import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class Customcartappbar extends StatelessWidget {
  const Customcartappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).cartTitle,
          style:
              textStyles.textstyle19.copyWith(color: const Color(0xff0C0D0D)),
        ),
      ],
    );
  }
}
