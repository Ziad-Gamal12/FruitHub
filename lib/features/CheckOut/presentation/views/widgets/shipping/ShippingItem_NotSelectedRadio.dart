// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class ShippingItem_NotSelectedRadio extends StatelessWidget {
  const ShippingItem_NotSelectedRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xff949D9E),
            width: 1,
          )),
    );
  }
}
