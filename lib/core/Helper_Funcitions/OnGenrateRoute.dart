// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:fruits/features/Auth/presentation/views/SignUpView.dart';
import 'package:fruits/features/Home/Presentation/views/homeView.dart';
import 'package:fruits/features/Onboarding/presentation/views/onboardingView.dart';
import 'package:fruits/features/Splash/presentation/views/Splash_View.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Splash_View.routename:
      return MaterialPageRoute(builder: (context) => const Splash_View());
    case SignIn_View.LoginViewRoute:
      return MaterialPageRoute(builder: (context) => const SignIn_View());
    case onboardingView.onboardingViewroute:
      return MaterialPageRoute(builder: (context) => const onboardingView());
    case signupview.signupView:
      return MaterialPageRoute(builder: (context) => const signupview());
    case Homeview.homeView:
      return MaterialPageRoute(builder: (context) => const Homeview());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
