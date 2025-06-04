import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Profile/presentation/views/MyOrdersView.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileActionsItem.dart';

class ProfileActionsList extends StatelessWidget {
  final bool isNotificationAllowed;
  final ValueChanged<bool> onNotificationToggle;

  const ProfileActionsList({
    super.key,
    required this.isNotificationAllowed,
    required this.onNotificationToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyOrdersView.routeName);
          },
          child: Customprofileactionsitem(
            image: Assets.assetsImagesOrdersIcon,
            title: "طلباتي",
            trailing: Image.asset(Assets.assetsImagesArrowRight),
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesFavouritesIcon,
          title: "المفضلة",
          trailing: Image.asset(Assets.assetsImagesArrowRight),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesNotificationsIcon,
          title: "الاشعارات",
          trailing: Switch(
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade400,
            activeColor: Colors.green,
            activeTrackColor: Colors.grey.shade300,
            value: isNotificationAllowed,
            onChanged: onNotificationToggle,
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesLanguageIcon,
          title: "اللغة",
          trailing: Row(
            children: [
              Text(
                "العربية",
                style: textStyles.textstyle13.copyWith(color: Colors.black),
              ),
              const SizedBox(width: 5),
              Image.asset(Assets.assetsImagesArrowRight),
            ],
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesAboutUsIcon,
          title: "من نحن",
          trailing: Image.asset(Assets.assetsImagesArrowRight),
        ),
      ],
    );
  }
}
