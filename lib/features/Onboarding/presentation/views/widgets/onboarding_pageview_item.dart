// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:svg_flutter/svg.dart';

class onboarding_pageview_item extends StatelessWidget {
  const onboarding_pageview_item(
      {super.key,
      required this.BackGroundImage,
      required this.Logo,
      required this.title,
      required this.subtitle,
      required this.currentpage});
  final String BackGroundImage;
  final String Logo;
  final Widget title;
  final String subtitle;
  final int currentpage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                BackGroundImage,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Positioned(
                  right: 0, left: 0, bottom: 0, child: SvgPicture.asset(Logo)),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(15),
                child: Visibility(
                  visible: currentpage == 0 ? true : false,
                  child: GestureDetector(
                    onTap: () {
                      shared_preferences_Services.boolSetter(
                          key: KIsonboaringseen, value: true);
                      Navigator.of(context)
                          .pushReplacementNamed(SignIn_View.LoginViewRoute);
                    },
                    child: Text(
                      "تخط",
                      style: textStyles(context: context).textstyle13.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff949D9E)),
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
        SizedBox(
          height: 65,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Text(
          subtitle,
          style: textStyles(context: context)
              .textstyle13
              .copyWith(color: Color(0xff4E5556)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
