import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';

class PayingCardInputs extends StatelessWidget {
  const PayingCardInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeiled(
          controller: variables.CheckoutPayingOwnCardNameController,
          hintText: "اسم حامل البطاقه",
          validator: (value) {
            if (value!.isEmpty) {
              return "اسم حامل البطاقه مطلوب";
            } else {
              return null;
            }
          },
          obscureText: false,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          controller: variables.CheckoutPayingCardNumberController,
          hintText: "رقم البطاقة",
          validator: (value) {
            if (value!.isEmpty) {
              return "رقم البطاقة مطلوب";
            } else {
              return null;
            }
          },
          obscureText: false,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFeiled(
                controller: variables.CheckoutPayingExpirationDateController,
                hintText: "تاريخ الصلاحيه",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "تاريخ الصلاحيه مطلوب";
                  } else {
                    return null;
                  }
                },
                obscureText: false,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextFeiled(
                controller: variables.CheckoutPayingCVVController,
                hintText: "CVV",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "CVV مطلوب";
                  } else {
                    return null;
                  }
                },
                obscureText: false,
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
