import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductDetailsProductInfo.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/productDetailsProductimgeSection.dart';

class Productdetailsviewbody extends StatelessWidget {
  const Productdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 6, child: productDetailsProductimgeSection()),
        SizedBox(height: 24),
        Expanded(flex: 8, child: Productdetailsproductinfo()),
      ],
    );
  }
}
