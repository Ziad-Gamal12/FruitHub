// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/features/Splash/presentation/views/Widgets/SplashView_body.dart';

class Splash_View extends StatelessWidget {
  static const routename = "splash";

  const Splash_View({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView_body(),
    );
  }
}
