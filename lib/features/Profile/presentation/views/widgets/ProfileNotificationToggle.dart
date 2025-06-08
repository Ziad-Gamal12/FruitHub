import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileActionsItem.dart';
import 'package:fruits/generated/l10n.dart';

class ProfileNotificationToggle extends StatelessWidget {
  final bool isNotificationAllowed;
  final ValueChanged<bool> onNotificationToggle;

  const ProfileNotificationToggle({
    super.key,
    required this.isNotificationAllowed,
    required this.onNotificationToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Customprofileactionsitem(
      image: Assets.assetsImagesNotificationsIcon,
      title: S.of(context).notifications,
      trailing: Switch(
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.grey.shade400,
        activeColor: Colors.green,
        activeTrackColor: Colors.grey.shade300,
        value: isNotificationAllowed,
        onChanged: onNotificationToggle,
      ),
    );
  }
}
