// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomCheckBox.dart';
import 'package:fruits/generated/l10n.dart';

class TermsAndConditions extends StatelessWidget {
  final ValueChanged<bool> onChanged;

  const TermsAndConditions({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Transform.translate(
        offset: const Offset(14, 0),
        child: Row(
          children: [
            CustomCheckBox(
              onChanged: onChanged,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: S.of(context).agreeTermsText1,
                      style: textStyles(context: context)
                          .textstyle13
                          .copyWith(color: const Color(0xff949D9E))),
                  TextSpan(
                      text: S.of(context).agreeTermsText2,
                      style: textStyles(context: context)
                          .textstyle13
                          .copyWith(color: AppColors.lightmaincolor))
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
