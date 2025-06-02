// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomAddProductToCartButton.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';
import 'package:fruits/features/Home/Presentation/views/productDetailsView.dart';
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
        child: Stack(fit: StackFit.expand, children: [
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              child: SvgPicture.asset(Assets.assetsImagesFavouriteIcon),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        Productdetailsview.routeName,
                        arguments: product);
                  },
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: SizedBox(
                            child: CustomCachedNetWorkImage(
                                imageUrl: product.imageUrl!)),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                  product.amout == 0
                      ? const Text(
                          "غير متوفر",
                          style: textStyles.textstyle13,
                        )
                      : CustomAddProductToCartButton(productsentity: product)
                ],
              )
            ],
          ),
        ]),
      ),
    ).animate().fade();
  }
}
