import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

class Cartproductslistviewitemimage extends StatelessWidget {
  const Cartproductslistviewitemimage({super.key, required this.product});
  final Cartproductentity product;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 73 / 92,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
        color: const Color(0xffF3F5F7),
        child: CustomCachedNetWorkImage(
            imageUrl: product.productsentity.imageUrl!),
      ),
    );
  }
}
