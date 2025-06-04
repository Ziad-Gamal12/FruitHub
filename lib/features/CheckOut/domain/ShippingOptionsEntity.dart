import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class Shippingoptionsentity {
  String title, subtitle, price;
  Shippingoptionsentity(
      {required this.title, required this.subtitle, required this.price});
  static List<Shippingoptionsentity> optionsList(BuildContext context) {
    return [
      Shippingoptionsentity(
          title: "الدفع أونلاين ",
          subtitle: "التسليم من المكان",
          price:
              "${context.read<Orderentity>().getOrderTotalPrice().toString()} جنيه"),
      Shippingoptionsentity(
          title: "اشتري الان وادفع لاحقا",
          subtitle: "يرجي تحديد طريقه الدفع",
          price:
              "${(context.read<Orderentity>().getOrderTotalPrice() + 30).toString()} جنيه"),
    ];
  }
}
