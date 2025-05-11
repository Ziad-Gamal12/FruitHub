import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCard.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCircelarImage.dart';

class Customorderinfo extends StatelessWidget {
  const Customorderinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Customcard(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 2,
          child: Customcircelarimage(image: Assets.assetsImagesAppleIcon),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "طلب رقم: 1234567#",
                  style: textStyles.textstyle13.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
                Text(
                  "تم الطلب :22 مارس ,2024",
                  style: textStyles.textstyle11
                      .copyWith(color: const Color(0xff949D9E)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "عدد الطلبات :",
                          style: textStyles.textstyle13
                              .copyWith(color: const Color(0xff949D9E))),
                      TextSpan(
                          text: "5",
                          style: textStyles.textstyle13.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.black))
                    ])),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "250 جنية",
                      style: textStyles.textstyle13.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ))
      ],
    ));
  }
}
