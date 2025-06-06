// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/fruit_item.dart';

class BestsellerGridview extends StatelessWidget {
  const BestsellerGridview({
    super.key,
    required this.products,
  });
  final List<Productsentity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 163 / 214,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return FruitItem(
            product: products[index],
          );
        });
  }
}
