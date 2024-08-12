// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/features/Onboarding/presentation/views/widgets/onboardingView_body.dart';

class onboardingView extends StatelessWidget {
  static const onboardingViewroute = "onboardingView";

  const onboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: onboardingView_body(),
    );
  }
}
