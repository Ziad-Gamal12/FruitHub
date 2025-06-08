import 'package:flutter/material.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileAboutUsAction.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileFavoritesAction.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileLanguageToggle.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileNotificationToggle.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileOrdersAction.dart';

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
        const ProfileOrdersAction(),
        const ProfileFavoritesAction(),
        ProfileNotificationToggle(
          isNotificationAllowed: isNotificationAllowed,
          onNotificationToggle: onNotificationToggle,
        ),
        const ProfileLanguageToggle(),
        const ProfileAboutUsAction(),
      ],
    );
  }
}
