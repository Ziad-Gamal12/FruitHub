// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class customHomeAppBar extends StatelessWidget {
  const customHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Assets.assetsImagesProfilePicture),
      title: Text(
        welcomeMessage(DateTime.now(), context),
        style: textStyles.textstyle16.copyWith(
            fontWeight: FontWeight.w400, color: const Color(0xff949D9E)),
      ),
      subtitle: Text(
        getUserData().name,
        style: textStyles.textstyle16
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }

  String welcomeMessage(DateTime time, BuildContext context) {
    if (time.hour >= 12) {
      return S.of(context).goodNightMessage;
    } else {
      return S.of(context).goodMorningMessage;
    }
  }
}
