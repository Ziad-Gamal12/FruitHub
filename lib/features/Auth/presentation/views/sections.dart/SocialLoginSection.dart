// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SocialLoginButton.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SocialLoginButton(
          onPressed: () {
            BlocProvider.of<SignInCubit>(context).signInWithGoogle();
          },
          icon: SvgPicture.asset(Assets.assetsImagesGoogleIcon),
          text: "تسجيل بواسطة جوجل"),
      const SizedBox(
        height: 16,
      ),
      Platform.isIOS
          ? Column(
              children: [
                SocialLoginButton(
                    onPressed: () {
                      BlocProvider.of<SignInCubit>(context).siginWithApple();
                    },
                    icon: SvgPicture.asset(Assets.assetsImagesAppleIcon),
                    text: "تسجيل بواسطة أبل"),
                const SizedBox(
                  height: 16,
                ),
              ],
            )
          : SizedBox(),
      SocialLoginButton(
          onPressed: () {
            BlocProvider.of<SignInCubit>(context).signinWithFacebook();
          },
          icon: SvgPicture.asset(Assets.assetsImagesFacebookIcon),
          text: "تسجيل بواسطة فيسبوك")
    ]);
  }
}
