import 'package:flutter/material.dart';
import 'package:fruits/features/CheckOut/domain/PayingOptionEntity.dart';
import 'package:svg_flutter/svg.dart';

class Payingoptionlistviewitem extends StatelessWidget {
  const Payingoptionlistviewitem({super.key, required this.payingoptionentity});
  final Payingoptionentity payingoptionentity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        payingoptionentity.action();
      },
      child: Container(
        padding: payingoptionentity.cardPadding,
        decoration: BoxDecoration(
            color: payingoptionentity.cardColor,
            border: Border.all(color: const Color(0xffD6DCE5), width: 1),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              const BoxShadow(
                  color: Color(0xffD6DCE5), spreadRadius: 1, blurRadius: 14)
            ]),
        child: SizedBox(child: SvgPicture.asset(payingoptionentity.image)),
      ),
    );
  }
}
