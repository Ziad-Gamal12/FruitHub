import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/AboutUsWidgets/AboutusviewBody.dart';
import 'package:fruits/generated/l10n.dart';

class Aboutusview extends StatelessWidget {
  const Aboutusview({super.key});
  static const routeName = '/aboutusview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).aboutUs,
        isBack: true,
      ),
      body: const Aboutusviewbody(),
    );
  }
}
