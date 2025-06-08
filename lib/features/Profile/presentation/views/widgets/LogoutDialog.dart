// logout_dialog.dart
import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomButton.dart';

import 'logout_service.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: Colors.white,
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
        child: Text(
          "هل انت متأكد من تسجيل الخروج؟",
          style: textStyles(context: context).textstyle13.copyWith(
                color: AppColors.MainColor,
                fontWeight: FontWeight.w600,
              ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () async {
                  await performLogout(context);
                },
                text: "تأكيد",
                buttonColor: AppColors.MainColor,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "لا أرغب",
                buttonColor: Colors.white,
                textColor: AppColors.MainColor,
                borderSide: const BorderSide(color: AppColors.MainColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}
