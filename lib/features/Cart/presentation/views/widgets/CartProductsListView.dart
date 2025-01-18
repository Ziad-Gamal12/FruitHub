import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewItem.dart';

class Cartproductslistview extends StatelessWidget {
  const Cartproductslistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartBlocContext = context.watch<CartCubit>();
    return SliverList.builder(
        itemCount: cartBlocContext.cartentity.products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              AspectRatio(
                  aspectRatio: 341 / 92,
                  child: Cartproductslistviewitem(
                    product: cartBlocContext.cartentity.products[index],
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
