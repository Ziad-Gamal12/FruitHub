import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class Customstarratinginfoitem extends StatelessWidget {
  const Customstarratinginfoitem(
      {super.key, required this.title, required this.percent});
  final String title;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: textStyles.textstyle13
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 241 / 8,
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: const Color(0xffE4E6E7),
                borderRadius: BorderRadius.circular(2),
              ),
              child: LinearProgressIndicator(
                value: percent,
                backgroundColor: Colors.transparent,
                color: const Color(0xffFFB400),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
