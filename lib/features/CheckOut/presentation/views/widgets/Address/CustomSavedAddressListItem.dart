import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';
import 'package:svg_flutter/svg.dart';

class Customsavedaddresslistitem extends StatelessWidget {
  const Customsavedaddresslistitem(
      {super.key, required this.orderaddressentity});
  final Orderaddressentity orderaddressentity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.KlightSecondaryColor,
            child: Center(
              child: SvgPicture.asset(
                Assets.assetsImagesLocationIcon,
                height: 25,
                width: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderaddressentity.fullname ?? "",
                style: textStyles(context: context)
                    .textstyle13
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                orderaddressentity.email ?? "",
                style: textStyles(context: context)
                    .textstyle13
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                orderaddressentity.phoneNumber ?? "",
                style: textStyles(context: context)
                    .textstyle13
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "${orderaddressentity.address}/${orderaddressentity.city}/${orderaddressentity.flatNumber}",
                style: textStyles(context: context)
                    .textstyle13
                    .copyWith(color: Colors.black),
              )
            ],
          ))
        ],
      ),
    );
  }
}
