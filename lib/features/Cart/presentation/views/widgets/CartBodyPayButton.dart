import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/CheckoutView.dart';
import 'package:fruits/generated/l10n.dart';

class CartBodyPayButton extends StatelessWidget {
  const CartBodyPayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Positioned(
          bottom: 67,
          left: 16,
          right: 16,
          child: context.read<CartCubit>().cartentity.products.isEmpty
              ? const SizedBox()
              : CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Checkoutview.routeName,
                        arguments: context.read<CartCubit>().cartentity);
                  },
                  text:
                      "${S.of(context).pay}  ${context.read<CartCubit>().getTotalPrice().toString()} ${S.of(context).pound}"),
        );
      },
    );
  }
}
