import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class ProfileSectionTitle extends StatelessWidget {
  final String title;

  const ProfileSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: textStyles(context: context)
            .textstyle16
            .copyWith(color: Colors.black),
      ),
    );
  }
}
