// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:fruits/features/Onboarding/presentation/views/widgets/onboaring_PageView.dart';
import 'package:fruits/generated/l10n.dart';

class onboardingView_body extends StatefulWidget {
  const onboardingView_body({super.key});

  @override
  State<onboardingView_body> createState() => _onboardingView_bodyState();
}

class _onboardingView_bodyState extends State<onboardingView_body> {
  late PageController pageController;
  int CurrentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      CurrentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: onboaring_PageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.dotsActiveColor,
              color: CurrentPage == 0
                  ? AppColors.dotsMainColor
                  : AppColors.dotsActiveColor),
        ),
        Visibility(
          visible: CurrentPage == 0 ? false : true,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 43, top: 29),
            child: CustomButton(
                onPressed: () async {
                  await shared_preferences_Services.boolSetter(
                      key: KIsonboaringseen, value: true);
                  if (mounted) {
                    Navigator.of(context)
                        .pushReplacementNamed(SignIn_View.LoginViewRoute);
                  }
                },
                text: S.of(context).next),
          ),
        )
      ],
    );
  }
}
