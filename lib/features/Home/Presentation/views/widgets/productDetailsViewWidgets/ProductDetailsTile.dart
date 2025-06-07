import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/productdetailsCounterWidget.dart';
import 'package:fruits/generated/l10n.dart';

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
            text: "${product.price} ${S.of(context).pound} /",
            style: textStyles.textstyle13.copyWith(
                color: AppColors.KsecondaryColor, fontWeight: FontWeight.w700)),
        TextSpan(
            text: S.of(context).kilo,
            style: textStyles.textstyle13.copyWith(
                color: AppColors.KlightSecondaryColor,
                fontWeight: FontWeight.w600)),
      ])),
      trailing: Visibility(
        visible: product.amout == 0 ? false : true,
        child: IntrinsicWidth(
          child: productdetailsCounterWidget(
            product: cubit.cartentity.products.firstWhere(
              (element) => element.productsentity.code == product.code,
              orElse: () {
                return context.read<Cartproductentity>();
              },
            ),
          ),
        ),
      ),
    );
  }
}
