import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class Aboutusviewbody extends StatelessWidget {
  const Aboutusviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          const BoxShadow(
            color: Color(0x337090B0),
            blurRadius: 40,
            offset: Offset(0, 16),
            spreadRadius: 0,
          )
        ],
      ),
      child: SizedBox(
        child: Text(S.of(context).AboutUsContent,
            textAlign: TextAlign.justify,
            style: textStyles(context: context)
                .textstyle16
                .copyWith(color: const Color(0xFF949D9E))),
      ),
    );
  }
}
