// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SocialLoginButton.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SocialLoginButton(
          onPressed: () {
            BlocProvider.of<SignInCubit>(context)
                .signInWithGoogle(context: context);
          },
          icon: SvgPicture.asset(Assets.assetsImagesGoogleIcon),
          text: S.of(context).loginWithGoogle),
      const SizedBox(
        height: 16,
      ),
      Platform.isIOS
          ? Column(
              children: [
                SocialLoginButton(
                    onPressed: () {
                      BlocProvider.of<SignInCubit>(context)
                          .siginWithApple(context: context);
                    },
                    icon: SvgPicture.asset(Assets.assetsImagesAppleIcon),
                    text: S.of(context).loginWithApple),
                const SizedBox(
                  height: 16,
                ),
              ],
            )
          : const SizedBox(),
      SocialLoginButton(
          onPressed: () {
            BlocProvider.of<SignInCubit>(context)
                .signinWithFacebook(context: context);
          },
          icon: SvgPicture.asset(Assets.assetsImagesFacebookIcon),
          text: S.of(context).loginWithFacebook),
    ]);
  }
}
