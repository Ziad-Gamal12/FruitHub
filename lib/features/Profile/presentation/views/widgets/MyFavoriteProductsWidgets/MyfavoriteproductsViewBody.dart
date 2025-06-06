import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/managers/cubit/favorite_products_cubit.dart';
import 'package:fruits/core/widgets/fruit_item.dart';
import 'package:provider/provider.dart';

class MyfavoriteproductsViewBody extends StatelessWidget {
  const MyfavoriteproductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Productsentity> products =
        context.watch<FavoriteProductsCubit>().favouriteProducts;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: KHorizentalPadding, vertical: 24),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 163 / 214,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) => FruitItem(
          product: products[index],
        ),
      ),
    );
  }
}
