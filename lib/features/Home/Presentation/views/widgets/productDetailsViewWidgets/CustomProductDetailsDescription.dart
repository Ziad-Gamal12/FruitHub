import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomProductDetailsDescription extends StatelessWidget {
  const CustomProductDetailsDescription({
    super.key,
    required this.product,
  });

  final Productsentity product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        product.description,
        style: textStyles.textstyle13.copyWith(
            color: const Color(0xff979899), fontWeight: FontWeight.w400),
      ),
    );
  }
}
