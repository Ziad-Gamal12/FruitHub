import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';

class CustomAddProductToCartButton extends StatelessWidget {
  const CustomAddProductToCartButton({
    super.key,
    required this.productsentity,
  });

  final Productsentity productsentity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CartCubit>().addProduct(product: productsentity);
      },
      child: const CircleAvatar(
        backgroundColor: AppColors.MainColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
