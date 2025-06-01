import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomFilterWidget.dart';
import 'package:fruits/features/products/presentation/views/widgets/CustomFilterBottomSheet.dart';

class Productsviewbodygridviewheader extends StatelessWidget {
  const Productsviewbodygridviewheader(
      {super.key,
      required this.resluteCount,
      required this.scaffoldKey,
      required this.products,
      required this.onChanged});
  final int resluteCount;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Productsentity> products;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$resluteCount نتائج",
          style: textStyles.textstyle16.copyWith(
              fontWeight: FontWeight.bold, color: const Color(0xff0C0D0D)),
        ),
        const Spacer(),
        InkWell(
            onTap: () {
              scaffoldKey.currentState?.showBottomSheet((context) {
                return CustomFilterBottomSheet(
                  products: products,
                  onValueChanged: onChanged,
                );
              });
            },
            child: const Customfilterwidget())
      ],
    );
  }
}
