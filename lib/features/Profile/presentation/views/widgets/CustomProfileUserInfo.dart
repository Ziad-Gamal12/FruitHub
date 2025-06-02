import 'package:flutter/material.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileImageWidget.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileNameAndEmail.dart';

class CustomProfileUserInfo extends StatelessWidget {
  const CustomProfileUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomProfileImageWidget(),
        SizedBox(
          width: 16,
        ),
        CustomProfileUserNameAndEmail()
      ],
    );
  }
}
