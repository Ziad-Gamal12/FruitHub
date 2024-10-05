import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Domain/Entities/BottomNavigationBar_Entity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/CustomBottomNavigationBar_Item.dart';

class CustomBottomnavigationbar extends StatefulWidget {
  const CustomBottomnavigationbar({super.key});

  @override
  State<CustomBottomnavigationbar> createState() =>
      _CustomBottomnavigationbarState();
}

class _CustomBottomnavigationbarState extends State<CustomBottomnavigationbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
        child: Row(
          children: BottomnavigationbarEntity.bottomnavigationbarEntityList()
              .asMap()
              .entries
              .map((e) {
            int index = e.key;
            BottomnavigationbarEntity bottomnavigationbarEntity = e.value;
            return CustombottomnavigationbarItem(
              isSelected: currentIndex == index ? true : false,
              bottomnavigationbarEntity: bottomnavigationbarEntity,
            );
          }).toList(),
        ),
      ),
    );
  }
}
