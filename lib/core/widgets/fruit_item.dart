// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class fruit_item extends StatelessWidget {
  const fruit_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xffF3F5F7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 20),
        child: Stack(children: [
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              child: SvgPicture.asset(Assets.assetsImagesFavouriteIcon),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  Assets.assetsImagesBestSellerItemTest2,
                  fit: BoxFit.fill,
                ),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "بطيخ",
                          style: textStyles.textstyle13,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "20جنية /",
                              style: textStyles.textstyle13.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.KsecoderyColor),
                            ),
                            Text(
                              "الكيلو",
                              style: textStyles.textstyle13.copyWith(
                                  color: AppColors.KLightsecoderyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundColor: AppColors.MainColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}