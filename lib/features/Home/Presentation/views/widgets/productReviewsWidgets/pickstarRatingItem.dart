import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class Pickstarratingitem extends StatelessWidget {
  const Pickstarratingitem(
      {super.key, required this.text, required this.isSelected});
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 110,
      decoration: BoxDecoration(
          color: isSelected
              ? Colors.transparent.withOpacity(.05)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.assetsImagesStarIcon,
            height: 60,
            width: 60,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(text,
              style: textStyles(context: context)
                  .textstyle19
                  .copyWith(color: Colors.black))
        ],
      ),
    );
  }
}
