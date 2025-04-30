import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class Payingoptionlistviewtitle extends StatelessWidget {
  const Payingoptionlistviewtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "أختار طريقه الدفع المناسبه :",
          style: textStyles.textstyle13
              .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          "من فضلك اختر طريقه الدفع المناسبه لك.",
          style: textStyles.textstyle13.copyWith(
              color: const Color(0xff616A6B), fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
