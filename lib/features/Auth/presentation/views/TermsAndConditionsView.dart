import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/TermsandconditionsviewBody.dart';
import 'package:fruits/generated/l10n.dart';

class Termsandconditionsview extends StatelessWidget {
  const Termsandconditionsview({super.key});
  static const String routeName = '/Termsandconditionsview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).termsAndConditionsTitle,
        isBack: true,
      ),
      body: const Termsandconditionsviewbody(),
    );
  }
}
