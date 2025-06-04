// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:fruits/features/Home/Presentation/views/homeView.dart';
import 'package:fruits/features/Onboarding/presentation/views/onboardingView.dart';
import 'package:svg_flutter/svg.dart';

class SplashView_body extends StatefulWidget {
  const SplashView_body({super.key});

  @override
  State<SplashView_body> createState() => _SplashView_bodyState();
}

class _SplashView_bodyState extends State<SplashView_body> {
  @override
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SvgPicture.asset(Assets.assetsImagesSplashTree)]),
        SvgPicture.asset(Assets.assetsImagesSplashLogo),
        SvgPicture.asset(
          Assets.assetsImagesSplashCircles,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  Future<void> _navigateAfterDelay() async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      final bool isOnboardingSeen =
          shared_preferences_Services.boolgetter(key: KIsonboaringseen) ??
              false;
      final bool isLoggedIn = await firebaseAuthService().isLoggedin();
      log(isLoggedIn.toString());
      log(isOnboardingSeen.toString());
      if (!mounted) return;

      if (!isOnboardingSeen) {
        Navigator.of(context)
            .pushReplacementNamed(onboardingView.onboardingViewroute);
      } else {
        if (isLoggedIn) {
          Navigator.of(context).pushReplacementNamed(Homeview.homeView);
        } else {
          Navigator.of(context)
              .pushReplacementNamed(SignIn_View.LoginViewRoute);
        }
      }
    } catch (e) {
      errordialog(context, "حدث خطأ ما").show();
    }
  }
}
