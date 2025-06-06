import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';

class CustomFruitItemImage extends StatelessWidget {
  const CustomFruitItemImage({
    super.key,
    required this.product,
  });

  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 24,
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
              child: CustomCachedNetWorkImage(imageUrl: product.imageUrl!)),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(
            height: 24,
          ),
        ),
      ],
    );
  }
}
