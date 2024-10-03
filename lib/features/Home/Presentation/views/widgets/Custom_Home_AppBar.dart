import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class customHomeAppBar extends StatelessWidget {
  const customHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Assets.assetsImagesProfilePicture),
      title: Text(
        "صباح الخير !..",
        style: textStyles.textstyle16.copyWith(
            fontWeight: FontWeight.w400, color: const Color(0xff949D9E)),
      ),
      subtitle: Text(
        "أحمد مصطفي",
        style: textStyles.textstyle16
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: const Color(0xffEEF8ED),
            borderRadius: BorderRadius.circular(50)),
        child: SvgPicture.asset(Assets.assetsImagesNotification),
      ),
    );
  }
}
