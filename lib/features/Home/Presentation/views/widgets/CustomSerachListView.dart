import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/CustomSearchListItem.dart';

class Customserachlistview extends StatelessWidget {
  const Customserachlistview({super.key, required this.products});
  final List<Productsentity> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 4 / 1,
          child: Column(
            children: [
              Customsearchlistitem(productsentity: products[index]),
              index != products.length - 1
                  ? const Divider(
                      height: 2,
                      color: Colors.black,
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
