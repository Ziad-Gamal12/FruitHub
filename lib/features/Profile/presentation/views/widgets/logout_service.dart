// logout_service.dart
import 'package:flutter/material.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';

Future<void> performLogout(BuildContext context) async {
  await firebaseAuthService().signout();

  Navigator.pushNamedAndRemoveUntil(
    context,
    SignIn_View.LoginViewRoute,
    (route) => false,
  );
}
