import 'package:fruits/core/Helper_Funcitions/getOrderCurrency.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

class Item {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  Item({this.name, this.quantity, this.price, this.currency});

  factory Item.fromEntity(Cartproductentity cartproductentity) {
    return Item(
      name: cartproductentity.productsentity.name,
      quantity: cartproductentity.count,
      price: cartproductentity.productsentity.price,
      currency: getorderCurrency(),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
}
