import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/OrderTraking/domain/orderStatusItemEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCircelarImage.dart';

class Customorderstatusitem extends StatelessWidget {
  const Customorderstatusitem(
      {super.key, required this.status, required this.isActive});
  final Orderstatusitementity status;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Customcircelarimage(
          image: status.image,
          iconcolor: isActive ? Colors.green : Colors.grey,
          avatarColor:
              isActive ? const Color(0xffEBF9F1) : Colors.grey.shade200,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status.status,
              style: textStyles(context: context)
                  .textstyle13
                  .copyWith(fontWeight: FontWeight.w700, color: Colors.black),
            ),
            Text(
              status.description,
              style: textStyles(context: context)
                  .textstyle11
                  .copyWith(color: const Color(0xff949D9E)),
            ),
            const Flexible(
              child: SizedBox(
                height: 50,
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
            )
          ],
        ))
      ],
    );
  }
}
