import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/generated/l10n.dart';

class Shippingoptionsentity {
  String title, subtitle, price;
  Shippingoptionsentity(
      {required this.title, required this.subtitle, required this.price});
  static List<Shippingoptionsentity> optionsList(BuildContext context) {
    return [
      Shippingoptionsentity(
          title: S.of(context).onlinePaymentTitle,
          subtitle: S.of(context).onlinePaymentSubtitle,
          price:
              "${context.read<Orderentity>().getOrderTotalPrice().toString()} ${S.of(context).currency}"),
      Shippingoptionsentity(
          title: S.of(context).buyNowPayLaterTitle,
          subtitle: S.of(context).buyNowPayLaterSubtitle,
          price:
              "${(context.read<Orderentity>().getOrderTotalPrice() + 30).toString()} ${S.of(context).currency}"),
    ];
  }
}
