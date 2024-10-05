import 'package:fruits/core/Utils/assets.dart';

class BottomnavigationbarEntity {
  final String activeIconPath, inActiveIconPath;
  final String title;

  BottomnavigationbarEntity(
      {required this.activeIconPath,
      required this.inActiveIconPath,
      required this.title});
  static List<BottomnavigationbarEntity> bottomnavigationbarEntityList() {
    return [
      BottomnavigationbarEntity(
          activeIconPath: Assets.assetsImagesBottomNavigationBarHomeActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarHomeIcon,
          title: "الرئيسية"),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarCategeriesActiveIcon,
          inActiveIconPath:
              Assets.assetsImagesBottomNavigationBarCategeriesIcon,
          title: "المنتجات"),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarMarketBinActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarMarketBinIcon,
          title: "سلة التسوق"),
      BottomnavigationbarEntity(
          activeIconPath:
              Assets.assetsImagesBottomNavigationBarProfileActiveIcon,
          inActiveIconPath: Assets.assetsImagesBottomNavigationBarProfileIcon,
          title: "حسابي"),
    ];
  }
}
