// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/fruit_item.dart';

class BestsellerGideviewBestSellerBody extends StatelessWidget {
  const BestsellerGideviewBestSellerBody({super.key, required this.products});
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
          return fruit_item(product: products[index]); //fruit_item();
        });
  }
}
