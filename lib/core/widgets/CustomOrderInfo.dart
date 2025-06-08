import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCard.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCircelarImage.dart';
import 'package:fruits/generated/l10n.dart';

class Customorderinfo extends StatelessWidget {
  const Customorderinfo({super.key, required this.order});
  final Orderentity order;
  @override
  Widget build(BuildContext context) {
    return Customcard(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customcircelarimage(image: Assets.assetsImagesOrdertrakinginfoIcon),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      S.of(context).orderNumber,
                      style: textStyles.textstyle13.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "${order.id}#",
                      style: textStyles.textstyle11.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  "${S.of(context).orderedAt} ${order.createdAt.day}-${getThemonth(order.createdAt.month, context)}-${order.createdAt.year}",
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
                          text: S.of(context).orderCount,
                          style: textStyles.textstyle13
                              .copyWith(color: const Color(0xff949D9E))),
                      TextSpan(
                          text: " ${order.orderProducts.length}",
                          style: textStyles.textstyle13.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.black))
                    ])),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${order.orderProducts.map((e) => double.parse(e.productsentity.price)).reduce((a, b) => a + b)} ${S.of(context).currency}",
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

  String getThemonth(int month, BuildContext context) {
    switch (month) {
      case 1:
        return S.of(context).month1;
      case 2:
        return S.of(context).month2;
      case 3:
        return S.of(context).month3;
      case 4:
        return S.of(context).month4;
      case 5:
        return S.of(context).month5;
      case 6:
        return S.of(context).month6;
      case 7:
        return S.of(context).month7;
      case 8:
        return S.of(context).month8;
      case 9:
        return S.of(context).month9;
      case 10:
        return S.of(context).month10;
      case 11:
        return S.of(context).month11;
      case 12:
        return S.of(context).month12;
      default:
        return "";
    }
  }
}
