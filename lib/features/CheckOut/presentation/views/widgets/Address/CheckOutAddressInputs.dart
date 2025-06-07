import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/generated/l10n.dart';

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
          hintText: S.of(context).fullName,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourFullName;
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
          hintText: S.of(context).email,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourEmail;
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
          hintText: S.of(context).addresses,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourAddress;
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
          hintText: S.of(context).city,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourCity;
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
          hintText: S.of(context).flatNumber,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourFlatNumber;
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
          hintText: S.of(context).phone,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).pleaseEnterYourPhoneNumber;
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
