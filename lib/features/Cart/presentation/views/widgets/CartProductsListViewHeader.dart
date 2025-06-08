import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/generated/l10n.dart';

class Cartproductslistviewheader extends StatelessWidget {
  const Cartproductslistviewheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 41,
      width: double.infinity,
      color: const Color(0xffEBF9F1),
      child: Text(
        "${S.of(context).youHave} ${context.watch<CartCubit>().cartentity.products.length} ${S.of(context).productsInCart}",
        style: textStyles(context: context).textstyle13.copyWith(
            color: const Color(0xff1B5E37), fontWeight: FontWeight.w400),
      ),
    );
  }
}
