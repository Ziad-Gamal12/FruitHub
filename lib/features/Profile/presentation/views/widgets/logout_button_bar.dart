import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';

class LogoutButtonBar extends StatelessWidget {
  const LogoutButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 33,
      left: 0,
      right: 0,
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.white,
                  content: Padding(
                    padding: const EdgeInsets.only(
                        top: 48, bottom: 30, left: 60, right: 60),
                    child: Text(
                      "هل انت متاكد من تسجيل الخروج؟",
                      style: textStyles.textstyle13.copyWith(
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
                              await firebaseAuthService().signout();
                              Navigator.pushNamedAndRemoveUntil(context,
                                  SignIn_View.LoginViewRoute, (route) => false);
                            },
                            text: "تأكيد",
                            buttonColor: AppColors.MainColor,
                            textColor: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomButton(
                            onPressed: () {},
                            text: "لا ارغب",
                            buttonColor: Colors.white,
                            textColor: AppColors.MainColor,
                            borderSide:
                                const BorderSide(color: AppColors.MainColor),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              });
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
