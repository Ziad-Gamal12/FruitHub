import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/customSectionWidget.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Customsectionwidget(
      title: "ملخص الطلب :",
      chid: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "المجموع الفرعي :",
                  style: textStyles.textstyle13.copyWith(
                      color: const Color(0xff4E5556),
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  "${context.read<Orderentity>().cartentity.getTotalPrice().toString()} جنيه",
                  style: textStyles.textstyle16.copyWith(
                      color: const Color(0xff0C0D0D),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Text(
                  "التوصيل  :",
                  style: textStyles.textstyle13.copyWith(
                      color: const Color(0xff4E5556),
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  "30جنية",
                  style: textStyles.textstyle13.copyWith(
                      color: const Color(0xff4E5556),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 22,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Divider(
                height: 32,
                color: Color(0xffCACECE),
              ),
            ),
            Row(
              children: [
                Text(
                  "الكلي",
                  style: textStyles.textstyle16.copyWith(
                      color: const Color(0xff0C0D0D),
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Text(
                  "${(context.read<Orderentity>().cartentity.getTotalPrice() + 30).toString()} جنيه",
                  style: textStyles.textstyle19.copyWith(
                      color: const Color(0xff0C0D0D),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
