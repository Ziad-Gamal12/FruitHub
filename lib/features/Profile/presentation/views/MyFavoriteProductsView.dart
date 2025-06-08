import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/MyFavoriteProductsWidgets/MyfavoriteproductsViewBody.dart';
import 'package:fruits/generated/l10n.dart';

class Myfavoriteproductsview extends StatelessWidget {
  const Myfavoriteproductsview({super.key});
  static const routeName = '/Myfavoriteproductsview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).favorites,
        isBack: true,
      ),
      body: const MyfavoriteproductsViewBody(),
    );
  }
}
