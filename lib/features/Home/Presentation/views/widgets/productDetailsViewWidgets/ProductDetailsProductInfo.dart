import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/CustomProductDetailsDescription.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/CutomProductDetailsButton.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductAttributesGridView.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductDetailsRating.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductDetailsTile.dart';
import 'package:provider/provider.dart';

class Productdetailsproductinfo extends StatefulWidget {
  const Productdetailsproductinfo({super.key});

  @override
  State<Productdetailsproductinfo> createState() =>
      _ProductdetailsproductinfoState();
}

class _ProductdetailsproductinfoState extends State<Productdetailsproductinfo> {
  @override
  Widget build(BuildContext context) {
    Productsentity product = context.read<Productsentity>();
    CartCubit cubit = context.watch<CartCubit>();
    Cartproductentity newCartProduct = Cartproductentity(
      productsentity: product,
      count: 0,
    );
    return Provider.value(
      value: newCartProduct,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailsTile(product: product, cubit: cubit),
            const SizedBox(height: 8),
            ProductDetailsRating(product: product),
            const SizedBox(height: 8),
            CustomProductDetailsDescription(product: product),
            const Expanded(child: Productattributesgridview()),
            const CustomProductDetailsButton(),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
