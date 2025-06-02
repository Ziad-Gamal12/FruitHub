import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class LogoutButtonBar extends StatelessWidget {
  const LogoutButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 33,
      left: 0,
      right: 0,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 41,
          color: const Color(0xffEBF9F1),
          child: Row(
            children: [
              const Spacer(flex: 5),
              Text(
                "تسجيل الخروج",
                style: textStyles.textstyle13.copyWith(
                  color: AppColors.MainColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(flex: 3),
              Image.asset(Assets.assetsImagesArrowRight),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
