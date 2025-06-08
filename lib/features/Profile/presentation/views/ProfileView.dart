import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/ProfileViewBody.dart';
import 'package:fruits/generated/l10n.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).profile,
      ),
      body: const ProfileViewBody(),
    );
  }
}
