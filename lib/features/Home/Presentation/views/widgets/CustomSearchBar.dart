import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/CustomSerachListView.dart';

class Customsearchbar extends StatelessWidget {
  const Customsearchbar({super.key, required this.products});
  final List<Productsentity> products;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 20),
            spreadRadius: 4,
          )
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
      ),
      child: Customserachlistview(
        products: products,
      ),
    );
  }
}
