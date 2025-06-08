// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/LogoutDialog.dart';
import 'package:svg_flutter/svg.dart';

class LogoutButtonBar extends StatelessWidget {
  const LogoutButtonBar({super.key});
  @override
  Widget build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;

    return Positioned(
      bottom: 33,
      left: 0,
      right: 0,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => const LogoutDialog(),
          );
        },
        child: Container(
          width: double.infinity,
          height: 41,
          color: const Color(0xffEBF9F1),
          child: Row(
            children: [
              const Spacer(flex: 5),
              Text(
                "تسجيل الخروج",
                style: textStyles(context: context).textstyle13.copyWith(
                      color: AppColors.MainColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(flex: 3),
              Transform.rotate(
                angle: languageCode == 'en' ? 0 : 3.14,
                child: SvgPicture.asset(
                  Assets.assetsImagesArrowleft,
                  height: 20,
                  width: 20,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logout(
    BuildContext context,
  ) async {
    await firebaseAuthService().signout();

    Navigator.pushNamedAndRemoveUntil(
        context, SignIn_View.LoginViewRoute, (route) => false);
  }
}
