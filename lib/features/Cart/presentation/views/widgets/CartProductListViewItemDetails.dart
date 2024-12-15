import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

class CartProductListViewItemDetails extends StatelessWidget {
  const CartProductListViewItemDetails({
    super.key,
    required this.product,
  });
  final Cartproductentity product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          product.productsentity.name,
          style:
              textStyles.textstyle13.copyWith(color: const Color(0xff06161C)),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          "${product.calclulateTotalWeight()} كم",
          style: textStyles.textstyle13.copyWith(
              color: const Color(0xffF4A91F), fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
