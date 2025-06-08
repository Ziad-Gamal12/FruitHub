// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/managers/cubit/favorite_products_cubit.dart';
import 'package:fruits/core/widgets/CustomAddProductToCartButton.dart';
import 'package:fruits/core/widgets/CustomFruitItemImage.dart';
import 'package:fruits/core/widgets/CustomFruitItemInfo.dart';
import 'package:fruits/core/widgets/customAddFavoriteProductIcon.dart';
import 'package:fruits/features/Home/Presentation/views/productDetailsView.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({
    super.key,
    required this.product,
  });
  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    final isFavourite =
        context.watch<FavoriteProductsCubit>().isFavourite(product);
    return BlocConsumer<FavoriteProductsCubit, FavoriteProductsState>(
      listener: (context, state) {
        handleFavoriteActionsListener(state, isFavourite, context);
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xffF3F5F7),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 20),
            child: Stack(fit: StackFit.expand, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        productNavigation(context);
                      },
                      child: CustomFruitItemImage(product: product),
                    ),
                  ),
                  Row(
                    children: [
                      CustomFruitItemInfo(product: product),
                      const Spacer(),
                      product.amout == 0
                          ? Text(
                              "غير متوفر",
                              style: textStyles(context: context).textstyle13,
                            )
                          : CustomAddProductToCartButton(
                              productsentity: product)
                    ],
                  )
                ],
              ),
              Positioned(
                top: 8,
                right: 8,
                child: customAddFavoriteProductIcon(
                    isFavourite: isFavourite, product: product),
              ),
            ]),
          ),
        );
      },
    ).animate().fade();
  }

  void productNavigation(BuildContext context) {
    Navigator.of(context)
        .pushNamed(Productdetailsview.routeName, arguments: product);
  }

  void handleFavoriteActionsListener(
      FavoriteProductsState state, bool isFavorite, BuildContext context) {
    if (state is FavoriteProductsAddedScucess &&
        state.product.code == product.code) {
      isFavorite = true;
      context.read<FavoriteProductsCubit>().favouriteProducts.add(product);
    } else if (state is FavoriteProductsRemovedScucess &&
        state.product.code == product.code) {
      isFavorite = false;
      context
          .read<FavoriteProductsCubit>()
          .favouriteProducts
          .removeWhere((element) => element.code == product.code);
    } else if (state is FavoriteProductsAddedFailure) {
      showSnackBar(message: state.message, context: context);
    } else if (state is FavoriteProductsRemovedFailure) {
      showSnackBar(message: state.message, context: context);
    }
  }
}
