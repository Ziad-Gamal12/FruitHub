import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});
  factory Details.fromEntity({required Orderentity orederentity}) {
    return Details(
        shipping: orederentity.getShippingcost().toString(),
        subtotal: orederentity.orderProducts
            .map((e) => e.productsentity.price)
            .reduce((a, b) => a + b)
            .toString(),
        shippingDiscount: orederentity.geteshippingDiscount());
  }

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
}
