import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListView.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewHeader.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/customCartAppBar.dart';

class CartviewBody extends StatelessWidget {
  const CartviewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(child: Customcartappbar()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Cartproductslistviewheader(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            Cartproductslistview(
              products: [],
            ),
          ],
        ),
        Positioned(
          bottom: 67,
          left: 16,
          right: 16,
          child: CustomButton(
              onPressed: () {},
              text:
                  "الدفع  ${context.read<CartCubit>().getTotalPrice().toString()}جنيه"),
        ),
      ],
    );
  }
}
