import 'package:flutter/material.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartBodyPayButton.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListView.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewHeader.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/customCartAppBar.dart';

class CartviewBody extends StatefulWidget {
  const CartviewBody({super.key});

  @override
  State<CartviewBody> createState() => _CartviewBodyState();
}

class _CartviewBodyState extends State<CartviewBody> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomScrollView(
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
            Cartproductslistview(),
          ],
        ),
        CartBodyPayButton(),
      ],
    );
  }
}
