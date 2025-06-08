import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/customSectionWidget.dart';
import 'package:fruits/generated/l10n.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Customsectionwidget(
      title: S.of(context).orderSummaryTitle,
      chid: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  S.of(context).subtotalLabel,
                  style: textStyles(context: context).textstyle13.copyWith(
                      color: const Color(0xff4E5556),
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  "${context.read<Orderentity>().getOrderTotalPrice().toString()} ${S.of(context).currency}",
                  style: textStyles(context: context).textstyle16.copyWith(
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
                  S.of(context).deliveryLabel,
                  style: textStyles(context: context).textstyle13.copyWith(
                      color: const Color(0xff4E5556),
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  "30 ${S.of(context).currency}",
                  style: textStyles(context: context).textstyle13.copyWith(
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
                  S.of(context).totalLabel,
                  style: textStyles(context: context).textstyle16.copyWith(
                      color: const Color(0xff0C0D0D),
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Text(
                  "${(context.read<Orderentity>().getOrderTotalPrice() + 30).toString()} ${S.of(context).currency}",
                  style: textStyles(context: context).textstyle19.copyWith(
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
