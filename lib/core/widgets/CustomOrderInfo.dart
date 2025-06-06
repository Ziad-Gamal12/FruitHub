import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCard.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCircelarImage.dart';

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
                      "طلب رقم:",
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
                  "تم الطلب : ${order.createdAt.day}-${getThemonth(order.createdAt.month)}-${order.createdAt.year}",
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
                          text: " ${order.orderProducts.length}",
                          style: textStyles.textstyle13.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.black))
                    ])),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${order.orderProducts.map((e) => double.parse(e.productsentity.price)).reduce((a, b) => a + b)} جنية",
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

  String getThemonth(int month) {
    switch (month) {
      case 1:
        return "يناير";
      case 2:
        return "فبراير";
      case 3:
        return "مارس";
      case 4:
        return "ابريل";
      case 5:
        return "مايو";
      case 6:
        return "يونيو";
      case 7:
        return "يوليو";
      case 8:
        return "اغسطس";
      case 9:
        return "سبتمبر";
      case 10:
        return "اكتوبر";
      case 11:
        return "نوفمبر";
      case 12:
        return "ديسمبر";
      default:
        return "";
    }
  }
}
