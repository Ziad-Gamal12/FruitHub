import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/AddOrderSuccessViewWidgets/AddrOderSuccessViewBody.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:provider/provider.dart';

class AddrOderSuccessView extends StatelessWidget {
  const AddrOderSuccessView({super.key, required this.order});
  static const String routeName = '/AddOrderSuccessView';
  final Orderentity order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).payment,
        isBack: false,
      ),
      body:
          Provider.value(value: order, child: const Addrodersuccessviewbody()),
    );
  }
}
