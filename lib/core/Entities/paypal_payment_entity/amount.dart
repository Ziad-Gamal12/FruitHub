import 'package:fruits/core/Helper_Funcitions/getOrderCurrency.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  Details? details;

  Amount({this.total, this.currency, this.details});

  factory Amount.formEnity({required Orderentity orderEntity}) => Amount(
      total: orderEntity.getOrderTotalPrice().toString(),
      currency: getorderCurrency(),
      details: Details.fromEntity(orederentity: orderEntity));
  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
}
