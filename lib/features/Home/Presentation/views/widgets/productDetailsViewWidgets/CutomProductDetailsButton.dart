import 'package:collection/collection.dart'; // for firstWhereOrNull
import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
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
    return CustomButton(
      buttonColor: AppColors.MainColor,
      onPressed: () {
        if (existingProduct != null) {
          cubit.updateCartItem(product: newCartProduct);
          showSnackBar(
              message: "تم تحديث كمية المنتج في السلة",
              context: context,
              color: Colors.green,
              textColor: Colors.white);
        } else {
          if (newCartProduct.count > 0) {
            cubit.cartentity.addCartProductEntity(product: newCartProduct);
            cubit.updateCartItem(product: newCartProduct);
            showSnackBar(
                message: "تم اضافة المنتج الى السلة",
                context: context,
                color: Colors.green,
                textColor: Colors.white);
          } else {
            showSnackBar(
                message: "الكمية المطلوبة يجب ان تكون اكبر من 0",
                context: context);
          }
        }
      },
      text: existingProduct != null ? "تحديث  المنتج" : "أضف إلى السلة",
    );
  }
}
