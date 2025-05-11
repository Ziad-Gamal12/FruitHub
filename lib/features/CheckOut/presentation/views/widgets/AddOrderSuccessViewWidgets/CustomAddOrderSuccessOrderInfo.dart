import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:svg_flutter/svg.dart';

class CustomAddOrderSuccessOrderInfo extends StatelessWidget {
  const CustomAddOrderSuccessOrderInfo({
    super.key,
    required this.order,
  });

  final Orderentity order;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 154 / 107,
                child: SvgPicture.asset(Assets.assetsImagesSuccessIcon),
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          "تم بنجاح !",
          style: textStyles.textstyle16.copyWith(
              color: const Color(0xff0C0D0D), fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 9,
        ),
        Text.rich(
            overflow: TextOverflow.ellipsis,
            TextSpan(children: [
              TextSpan(
                  text: "رقم الطلب :",
                  style: textStyles.textstyle13
                      .copyWith(color: const Color(0xff4E5556))),
              TextSpan(
                  text: " #${order.id}",
                  style: textStyles.textstyle13.copyWith(
                      color: const Color(0xff0C0D0D),
                      fontWeight: FontWeight.w700)),
            ])),
      ],
    );
  }
}
