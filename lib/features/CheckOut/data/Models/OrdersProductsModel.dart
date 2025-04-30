import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

class Ordersproductsmodel {
  final String code, name, image;
  final int quantity;
  final double price;

  Ordersproductsmodel(
      {required this.code,
      required this.name,
      required this.image,
      required this.quantity,
      required this.price});

  factory Ordersproductsmodel.fromEntity({required Cartproductentity entity}) {
    return Ordersproductsmodel(
        code: entity.productsentity.code,
        name: entity.productsentity.name,
        image: entity.productsentity.imageUrl!,
        quantity: entity.count,
        price: entity.calclulateTotalPrice());
  }
  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "name": name,
      "image": image,
      "quantity": quantity,
      "price": price,
    };
  }
}
