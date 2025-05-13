import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewitemCount.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          ProductDetailsTile(product: product, cubit: cubit),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ProductDetailsTile extends StatelessWidget {
  const ProductDetailsTile({
    super.key,
    required this.product,
    required this.cubit,
  });

  final Productsentity product;
  final CartCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        product.name,
        style: textStyles.textstyle16
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
      subtitle: Text.rich(TextSpan(children: [
        TextSpan(
            text: "${product.price} جنية /",
            style: textStyles.textstyle13.copyWith(
                color: AppColors.KsecondaryColor, fontWeight: FontWeight.w700)),
        TextSpan(
            text: "الكيلو",
            style: textStyles.textstyle13.copyWith(
                color: AppColors.KlightSecondaryColor,
                fontWeight: FontWeight.w600)),
      ])),
      trailing: IntrinsicWidth(
        child: Cartproductslistviewitemcount(
          count: (value) {},
          product: cubit.cartentity.products.firstWhere(
            (element) => element.productsentity.code == product.code,
            orElse: () {
              return Cartproductentity(productsentity: product, count: 0);
            },
          ),
        ),
      ),
    );
  }
}
