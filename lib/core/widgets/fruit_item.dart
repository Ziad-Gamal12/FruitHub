// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:svg_flutter/svg.dart';

class fruit_item extends StatelessWidget {
  const fruit_item({super.key, required this.product});
  final Productsentity product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xffF3F5F7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 20),
        child: Stack(children: [
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              child: SvgPicture.asset(Assets.assetsImagesFavouriteIcon),
            ),
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomCachedNetWorkImage(imageUrl: product.imageUrl!),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: textStyles.textstyle13,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "${product.price}جنية /",
                              style: textStyles.textstyle13.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.KsecondaryColor),
                            ),
                            Text(
                              "الكيلو",
                              style: textStyles.textstyle13.copyWith(
                                  color: AppColors.KlightSecondaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        context.read<CartCubit>().addProduct(product: product);
                      },
                      child: const CircleAvatar(
                        backgroundColor: AppColors.MainColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    ).animate().fade();
  }
}
