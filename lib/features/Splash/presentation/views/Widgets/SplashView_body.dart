// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
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
  void initState() {
    onboardingNavigation();
    super.initState();
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

  void onboardingNavigation() async {
    bool isonboardinviewSeen =
        shared_preferences_Services.boolgetter(key: KIsonboaringseen);
    bool isloggedin = await firebaseAuthService().isLoggedin();
    Future.delayed(const Duration(seconds: 5), () {
      if (isonboardinviewSeen == false) {
        Navigator.of(context)
            .pushReplacementNamed(onboardingView.onboardingViewroute);
      } else {
        if (isloggedin) {
          Navigator.of(context).pushReplacementNamed(Homeview.homeView);
        } else {
          Navigator.of(context).pushReplacementNamed(Homeview.homeView);
        }
      }
    });
  }
}
