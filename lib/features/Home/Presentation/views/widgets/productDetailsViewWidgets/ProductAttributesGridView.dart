import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/productattributeItem.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:provider/provider.dart';

class Productattributesgridview extends StatelessWidget {
  const Productattributesgridview({super.key});

  @override
  Widget build(BuildContext context) {
    Productsentity product = context.read<Productsentity>();
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 163 / 80,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: 2),
      children: [
        Productattributeitem(
          title: product.expirnationsMonths.toString(),
          description: S.of(context).months,
          icon: Assets.assetsImagesProductExpirationIcon,
        ),
        Productattributeitem(
          title: product.isOrganic ?? false ? "100%" : "0%",
          description: S.of(context).Organic,
          icon: Assets.assetsImagesProductIsOrganicIcon,
        ),
        Productattributeitem(
          title: product.caloriesUnit.toString(),
          description: "100 ${S.of(context).gram}",
          icon: Assets.assetsImagesProductcaloriesUnitIcon,
        ),
        Productattributeitem(
          title: context
              .read<ProductsCubit>()
              .getproductStarRate(product: product)
              .toString(),
          description: S.of(context).starRating,
          icon: Assets.assetsImagesProductStarRatingIcon,
        ),
      ],
    );
  }
}
