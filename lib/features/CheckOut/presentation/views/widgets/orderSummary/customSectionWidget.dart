import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/AppDecorations.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class Customsectionwidget extends StatelessWidget {
  const Customsectionwidget({super.key, this.title, required this.chid});
  final String? title;
  final Widget chid;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Text(
                title!,
                style: textStyles.textstyle13
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              )
            : const SizedBox(),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: Appdecorations.greycardDecoration,
          child: chid,
        )
      ],
    );
  }
}
