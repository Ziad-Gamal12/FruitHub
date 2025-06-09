// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.appBartitle,
    this.isBack,
  });
  final String appBartitle;
  bool? isBack;

  @override
  AppBar build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leadingWidth: 40,
      leading: isBack == null || isBack == false
          ? const SizedBox()
          : Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Transform.rotate(
                  angle: languageCode == 'ar' ? 0 : 3.14,
                  child: SvgPicture.asset(
                    Assets.assetsImagesArrowleft,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
      title: Text(
        appBartitle,
        style: textStyles(context: context)
            .textstyle19
            .copyWith(color: Colors.black),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
