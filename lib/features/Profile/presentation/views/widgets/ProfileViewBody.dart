import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/services/LocalNotifications.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/logout_button_bar.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/profile_actions_list.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/profile_section_title.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/profile_user_info_section.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  late bool isNotificationAllowed;
  @override
  void initState() {
    isNotificationAllowed = shared_preferences_Services.boolgetter(
          key: BackendEndpoints.isNotifacationAllowed,
        ) ??
        true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              const SliverToBoxAdapter(child: ProfileUserInfoSection()),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              const SliverToBoxAdapter(
                  child: ProfileSectionTitle(title: "عام")),
              SliverToBoxAdapter(
                child: ProfileActionsList(
                  isNotificationAllowed: isNotificationAllowed,
                  onNotificationToggle: (value) async {
                    await shared_preferences_Services.boolSetter(
                      key: BackendEndpoints.isNotifacationAllowed,
                      value: value,
                    );
                    if (value == false) {
                      await LocalNotifications.cancelAllNotifications();
                    }
                    setState(() {
                      isNotificationAllowed = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        const LogoutButtonBar(),
      ],
    );
  }
}
