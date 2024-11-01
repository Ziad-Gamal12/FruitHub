// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomNotification_Icon.dart';

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
        getUserData().name,
        style: textStyles.textstyle16
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      trailing: const CustomNotification_Icon(),
    );
  }
}
