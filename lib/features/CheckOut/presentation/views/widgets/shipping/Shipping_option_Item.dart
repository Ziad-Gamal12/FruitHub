import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/ShippingOptionsEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/shipping/ShippingItem_NotSelectedRadio.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/shipping/ShippingItem_SelectedRadio.dart';

class ShippingOptionItem extends StatelessWidget {
  const ShippingOptionItem(
      {super.key,
      required this.shippingoptionsentity,
      required this.isSelected});
  final Shippingoptionsentity shippingoptionsentity;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 16, left: 13, right: 4),
        decoration: BoxDecoration(
          color: const Color(0xffF7F7F7),
          border: isSelected
              ? Border.all(color: AppColors.MainColor, width: 1)
              : null,
          borderRadius: BorderRadius.circular(4),
        ),
        child: ListTile(
          minLeadingWidth: 20,
          titleAlignment: ListTileTitleAlignment.titleHeight,
          contentPadding: EdgeInsets.zero,
          leading: isSelected
              ? const ShippingitemSelectedradio()
              : const ShippingItem_NotSelectedRadio(),
          title: Text(
            shippingoptionsentity.title,
            style: textStyles.textstyle13
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          subtitle: Text(
            shippingoptionsentity.subtitle,
            style: textStyles.textstyle13
                .copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          trailing: Text(
            shippingoptionsentity.price,
            style: textStyles.textstyle13.copyWith(
                fontWeight: FontWeight.w700, color: AppColors.MainColor),
          ),
        ));
  }
}
