import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewItem.dart';

class Cartproductslistview extends StatelessWidget {
  const Cartproductslistview({super.key, required this.products});
  final List<Cartproductentity> products;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: context.read<CartCubit>().cartentity.products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              AspectRatio(
                  aspectRatio: 341 / 92,
                  child: Cartproductslistviewitem(
                    product:
                        context.read<CartCubit>().cartentity.products[index],
                  )),
              const Divider(
                height: 8,
                color: Color(0xffF1F1F5),
              )
            ],
          );
        });
  }
}
