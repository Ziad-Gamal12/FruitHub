import 'package:collection/collection.dart'; // for firstWhereOrNull
import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:provider/provider.dart';

class CustomProductDetailsButton extends StatelessWidget {
  const CustomProductDetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CartCubit cubit = context.read<CartCubit>();
    Cartproductentity newCartProduct = context.read<Cartproductentity>();
    Productsentity product = context.read<Productsentity>();
    final existingProduct = cubit.cartentity.products.firstWhereOrNull(
      (element) => element.productsentity.code == product.code,
    );
    return product.amout! > 0
        ? CustomButton(
            buttonColor: AppColors.MainColor,
            onPressed: () {
              if (existingProduct != null) {
                cubit.updateCartItem(product: newCartProduct);
                showSnackBar(
                    message: S.of(context).productQuantityUpdated,
                    context: context,
                    color: Colors.green,
                    textColor: Colors.white);
              } else {
                if (newCartProduct.count > 0) {
                  cubit.cartentity
                      .addCartProductEntity(product: newCartProduct);
                  cubit.updateCartItem(product: newCartProduct);
                  showSnackBar(
                      message: S.of(context).productAddedToCart,
                      context: context,
                      color: Colors.green,
                      textColor: Colors.white);
                } else {
                  showSnackBar(
                      message: S.of(context).quantityMustBeGreaterThanZero,
                      context: context);
                }
              }
            },
            text: existingProduct != null
                ? S.of(context).updateProduct
                : S.of(context).addToCart,
          )
        : Center(
            child: Text(
              S.of(context).notAvailable,
              style: textStyles(context: context)
                  .textstyle19
                  .copyWith(color: Colors.red),
            ),
          );
  }
}
