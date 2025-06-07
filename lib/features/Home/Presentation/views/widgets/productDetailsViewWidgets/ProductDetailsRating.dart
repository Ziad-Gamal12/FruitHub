import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/ProductreviewsView.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class ProductDetailsRating extends StatelessWidget {
  const ProductDetailsRating({
    super.key,
    required this.product,
  });

  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.assetsImagesStarIcon),
        const SizedBox(width: 8),
        Text(
          context
              .read<ProductsCubit>()
              .getproductStarRate(product: product)
              .toString(),
          style: textStyles.textstyle13
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 8),
        Text(
          "(${product.reviews!.length})",
          style: textStyles.textstyle13.copyWith(
              color: const Color(0xff616A6B), fontWeight: FontWeight.w400),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductreviewsView.routeName,
              arguments: product,
            );
          },
          child: Text(
            S.of(context).reviews,
            style: textStyles.textstyle13.copyWith(
                color: AppColors.MainColor, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
