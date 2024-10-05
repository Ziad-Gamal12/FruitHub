import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class Custombottomnavigationbaractiveicon extends StatelessWidget {
  const Custombottomnavigationbaractiveicon(
      {super.key, required this.activeIconPath, required this.title});
  final String activeIconPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Color(0xffeeeeee), borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(30)),
                child: SvgPicture.asset(activeIconPath),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                title,
                style:
                    textStyles.textstyle11.copyWith(color: AppColors.MainColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
