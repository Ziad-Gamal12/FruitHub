import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomFruitItemInfo extends StatelessWidget {
  const CustomFruitItemInfo({
    super.key,
    required this.product,
  });

  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: textStyles(context: context).textstyle13,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              "${product.price}جنية /",
              style: textStyles(context: context).textstyle13.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.KsecondaryColor),
            ),
            Text(
              "الكيلو",
              style: textStyles(context: context)
                  .textstyle13
                  .copyWith(color: AppColors.KlightSecondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
