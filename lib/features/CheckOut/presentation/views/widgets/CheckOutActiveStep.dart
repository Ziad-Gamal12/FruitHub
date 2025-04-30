import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Checkoutactivestep extends StatelessWidget {
  const Checkoutactivestep({super.key, required this.entity});
  final CheckoutstepitemEntity entity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.MainColor,
          child: SvgPicture.asset(Assets.assetsImagesCompletedIcon),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          entity.title,
          style: textStyles.textstyle13.copyWith(
              color: AppColors.MainColor, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
