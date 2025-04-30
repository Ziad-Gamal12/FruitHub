// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

abstract class variables {
  static TextEditingController LoginemailController = TextEditingController();
  static TextEditingController LoginPasswordController =
      TextEditingController();
  static TextEditingController signUpUserNameController =
      TextEditingController();
  static TextEditingController SignupemailController = TextEditingController();
  static TextEditingController SignupPasswordController =
      TextEditingController();
  static TextEditingController CheckoutAddressFullNameController =
      TextEditingController();
  static TextEditingController CheckoutAddressEmailAddressController =
      TextEditingController();
  static TextEditingController CheckoutAddressAddressController =
      TextEditingController();
  static TextEditingController CheckoutAddressCityController =
      TextEditingController();
  static TextEditingController CheckoutAddressFlatNumberController =
      TextEditingController();
  static TextEditingController CheckoutAddressphoneNumberController =
      TextEditingController();
  static TextEditingController CheckoutPayingOwnCardNameController =
      TextEditingController();
  static TextEditingController CheckoutPayingCardNumberController =
      TextEditingController();
  static TextEditingController CheckoutPayingExpirationDateController =
      TextEditingController();
  static TextEditingController CheckoutPayingCVVController =
      TextEditingController();
  static PageController checkoutProccessPageViewController = PageController();
  static int? currentShippingOptionIndex;
  static GlobalKey<FormState> Loginkey = GlobalKey();
  static GlobalKey<FormState> SignUpkey = GlobalKey();
}
