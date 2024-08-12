// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:fruits/core/Utils/textStyles.dart';

class SocialLoginButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget icon;
  final String text;
  const SocialLoginButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffDDDFDF), width: 1),
          borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              width: 53,
            ),
            Text(
              text,
              style: textStyles.textstyle16,
            )
          ],
        ),
      ),
    );
  }
}
