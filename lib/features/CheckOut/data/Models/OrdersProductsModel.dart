import 'package:fruits/core/Entities/ProductsEntity.dart';
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
  factory Ordersproductsmodel.fromJson(Map<String, dynamic> json) {
    return Ordersproductsmodel(
        code: json["code"],
        name: json["name"],
        image: json["image"],
        quantity: json["quantity"],
        price: json["price"]);
  }
  Cartproductentity toEntity() {
    return Cartproductentity(
        productsentity: Productsentity(
          code: code,
          name: name,
          imageUrl: image,
          price: price.toString(),
        ),
        count: quantity);
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
