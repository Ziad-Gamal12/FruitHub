// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Onboarding/presentation/views/widgets/onboarding_pageview_item.dart';
import 'package:fruits/generated/l10n.dart';

class onboaring_PageView extends StatelessWidget {
  const onboaring_PageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        onboarding_pageview_item(
            currentpage: 0,
            BackGroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
            Logo: Assets.assetsImagesPageViewItem1Image,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).onboardingWelcome,
                  style: textStyles.textstyle23,
                ),
                Text(
                  "HUB",
                  style: textStyles.textstyle23
                      .copyWith(color: const Color(0xffF4A91F)),
                ),
                Text(
                  "Fruit",
                  style: textStyles.textstyle23
                      .copyWith(color: AppColors.MainColor),
                )
              ],
            ),
            subtitle: S.of(context).onboardingSubtitle1),
        onboarding_pageview_item(
            currentpage: 1,
            BackGroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
            Logo: Assets.assetsImagesPageViewItem2Image,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).onboardingTitle2,
                  style: textStyles.textstyle23,
                ),
              ],
            ),
            subtitle: S.of(context).onboardingSubtitle2)
      ],
    );
  }
}
