import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductdetailsviewBody.dart';
import 'package:provider/provider.dart';

class Productdetailsview extends StatelessWidget {
  const Productdetailsview({super.key, required this.product});
  static const String routeName = '/productdetailsview';
  final Productsentity product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Provider.value(value: product, child: const Productdetailsviewbody()),
    );
  }
}
