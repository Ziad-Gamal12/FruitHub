// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/fruit_item.dart';
import 'package:fruits/features/BestSeller/Presentation/manager/get_best_seller_products_cubit/get_best_seller_products_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestsellerGideviewBestSellerBody extends StatelessWidget {
  const BestsellerGideviewBestSellerBody({super.key, required this.products});
  final List<Productsentity> products;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBestSellerProductsCubitCubit,
        GetBestSellerProductsCubitState>(
      builder: (context, state) {
        return SliverGrid.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 163 / 214,
                mainAxisSpacing: 8,
                crossAxisSpacing: 16),
            itemBuilder: (context, index) {
              return Skeletonizer(
                  enabled: state is GetBestSellerProductsCubitLoading == true
                      ? true
                      : false,
                  child: fruit_item(product: products[index])); //fruit_item();
            });
      },
    );
  }
}
