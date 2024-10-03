import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/TermsCheckBox.dart';

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
            Termscheckbox(
              onChanged: onChanged,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "من خلال إنشاء حساب ، فإنك توافق على",
                      style: textStyles.textstyle13
                          .copyWith(color: const Color(0xff949D9E))),
                  TextSpan(
                      text: "الشروط والأحكام الخاصة بنا ",
                      style: textStyles.textstyle13
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
