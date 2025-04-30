import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});
  factory Details.fromEntity({required Orderentity orederentity}) {
    return Details(
        shipping: orederentity.getShippingcost().toString(),
        subtotal: orederentity.cartentity.getTotalPrice().toString(),
        shippingDiscount: orederentity.geteshippingDiscount());
  }

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
}
