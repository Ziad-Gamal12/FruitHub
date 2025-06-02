import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomAddProductToCartButton.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';
import 'package:fruits/features/Home/Presentation/views/productDetailsView.dart';

class Customsearchlistitem extends StatelessWidget {
  const Customsearchlistitem({super.key, required this.productsentity});
  final Productsentity productsentity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Productdetailsview.routeName,
            arguments: productsentity);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: ListTile(
          leading:
              CustomCachedNetWorkImage(imageUrl: productsentity.imageUrl ?? ""),
          title: Text(
            productsentity.name,
            style: textStyles.textstyle16.copyWith(fontWeight: FontWeight.w700),
          ),
          subtitle: Row(
            children: [
              Text(
                "${productsentity.price}جنية /",
                style: textStyles.textstyle13.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.KsecondaryColor),
              ),
              Text(
                "الكيلو",
                style: textStyles.textstyle13
                    .copyWith(color: AppColors.KlightSecondaryColor),
              ),
            ],
          ),
          trailing: productsentity.amout == 0
              ? const Text(
                  "غير متوفر",
                  style: textStyles.textstyle13,
                )
              : CustomAddProductToCartButton(productsentity: productsentity),
        ),
      ),
    );
  }
}
