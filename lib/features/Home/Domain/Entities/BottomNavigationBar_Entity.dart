// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/generated/l10n.dart';

class BottomnavigationbarEntity {
  final String activeIconPath, inActiveIconPath;
  final String title;

  BottomnavigationbarEntity(
      {required this.activeIconPath,
      required this.inActiveIconPath,
      required this.title});
  static List<BottomnavigationbarEntity> bottomnavigationbarEntityList(
      {required BuildContext context}) {
    return [
      BottomnavigationbarEntity(
          activeIconPath: Assets.assetsImagesBottomNavigationBarHomeActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarHomeIcon,
          title: S.of(context).Home),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarCategeriesActiveIcon,
          inActiveIconPath:
              Assets.assetsImagesBottomNavigationBarCategeriesIcon,
          title: S.of(context).products),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarMarketBinActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarMarketBinIcon,
          title: S.of(context).cartTitle),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarProfileActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarProfileIcon,
          title: S.of(context).profile),
    ];
  }
}
