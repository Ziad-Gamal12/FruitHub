// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/managers/cubit/favorite_products_cubit.dart';
import 'package:svg_flutter/svg.dart';

class customAddFavoriteProductIcon extends StatelessWidget {
  const customAddFavoriteProductIcon({
    super.key,
    required this.isFavourite,
    required this.product,
  });

  final bool isFavourite;
  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isFavourite == true) {
          context
              .read<FavoriteProductsCubit>()
              .removeFavouriteProduct(product: product);
        } else {
          context
              .read<FavoriteProductsCubit>()
              .addFavouriteProduct(product: product);
        }
      },
      child: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(
          isFavourite == true
              ? Assets.assetsImagesCustomSolidFavoriteIcon
              : Assets.assetsImagesFavouriteIcon,
          height: 20,
          width: 20,
        ).animate().fadeIn(duration: 300.ms).scaleXY(duration: 300.ms),
      ),
    );
  }
}
