// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Domain/Entities/BottomNavigationBar_Entity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/CustomBottomNavigationBarActiveIcon.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custombottomnavigationbar_inActiveicon.dart';

class CustombottomnavigationbarItem extends StatelessWidget {
  const CustombottomnavigationbarItem(
      {super.key,
      required this.isSelected,
      required this.bottomnavigationbarEntity});
  final bool isSelected;
  final BottomnavigationbarEntity bottomnavigationbarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected == false
        ? Custombottomnavigationbar_inActiveicon(
            inactiveIconPath: bottomnavigationbarEntity.inActiveIconPath,
          )
        : Custombottomnavigationbaractiveicon(
            activeIconPath: bottomnavigationbarEntity.activeIconPath,
            title: bottomnavigationbarEntity.title,
          );
  }
}
