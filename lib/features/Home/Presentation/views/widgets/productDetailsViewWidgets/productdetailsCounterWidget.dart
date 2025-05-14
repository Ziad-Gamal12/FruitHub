// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CountActionButton.dart';

class productdetailsCounterWidget extends StatefulWidget {
  const productdetailsCounterWidget({
    super.key,
    required this.product,
  });
  final Cartproductentity product;
  @override
  State<productdetailsCounterWidget> createState() =>
      _ProductdetailsCounterWidgetState();
}

class _ProductdetailsCounterWidgetState
    extends State<productdetailsCounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountActionButton(
          buttonColor: const Color(0xff1B5E37),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 12,
          ),
          ontap: () {
            if (widget.product.count >= 0) {
              widget.product.count += 1;
              setState(() {});
            }
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          widget.product.count.toString(),
          style:
              textStyles.textstyle16.copyWith(color: const Color(0xff06140C)),
        ),
        const SizedBox(
          width: 16,
        ),
        CountActionButton(
          buttonColor: const Color(0xffF3F5F7),
          child: const Icon(
            Icons.remove,
            color: Color(0xff979899),
            size: 12,
          ),
          ontap: () {
            if (widget.product.count >= 1) {
              widget.product.count -= 1;
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
