import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class CheckOutAddressInputs extends StatelessWidget {
  const CheckOutAddressInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var orederentity = context.read<Orderentity>().addressEntity;
    return Column(
      children: [
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.fullname = value;
          },
          controller: variables.CheckoutAddressFullNameController,
          hintText: "الاسم كامل",
          validator: (value) {
            if (value!.isEmpty) {
              return "الاسم كامل مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.email = value;
          },
          controller: variables.CheckoutAddressEmailAddressController,
          hintText: "البريد الالكتروني",
          validator: (value) {
            if (value!.isEmpty) {
              return "البريد الالكتروني مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.address = value;
          },
          controller: variables.CheckoutAddressAddressController,
          hintText: "العنوان",
          validator: (value) {
            if (value!.isEmpty) {
              return "العنوان مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.streetAddress,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.city = value;
          },
          controller: variables.CheckoutAddressCityController,
          hintText: "المدينة",
          validator: (value) {
            if (value!.isEmpty) {
              return "المدينة مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.streetAddress,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.flatNumber = value;
          },
          controller: variables.CheckoutAddressFlatNumberController,
          hintText: "رقم الطابق , رقم الشقه ..",
          validator: (value) {
            if (value!.isEmpty) {
              return "رقم الطابق مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.streetAddress,
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFeiled(
          onSaved: (value) {
            orederentity!.phoneNumber = value;
          },
          controller: variables.CheckoutAddressphoneNumberController,
          hintText: "رقم الهاتف",
          validator: (value) {
            if (value!.isEmpty) {
              return "رقم الهاتف مطلوب";
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}
