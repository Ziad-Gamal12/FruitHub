import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';

class CheckoutInactivestep extends StatelessWidget {
  const CheckoutInactivestep({
    super.key,
    required this.entity,
  });
  final CheckoutstepitemEntity entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffF2F3F3),
          child: Text(entity.index.toString(),
              style: textStyles(context: context)
                  .textstyle13
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          entity.title,
          style: textStyles(context: context).textstyle13.copyWith(
              color: const Color(0xffAAAAAA), fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
