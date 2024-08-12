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

  static GlobalKey<FormState> Loginkey = GlobalKey();
  static GlobalKey<FormState> SignUpkey = GlobalKey();
}
