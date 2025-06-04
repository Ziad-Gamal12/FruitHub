import 'package:fruits/core/Entities/ProductsEntity.dart';

class Cartproductentity {
  final Productsentity productsentity;
  int count;
  Cartproductentity({required this.productsentity, this.count = 0});
  double calclulateTotalPrice() {
    return double.parse(productsentity.price) * count;
  }

  double calclulateTotalWeight() {
    return productsentity.amout! * count;
  }
}
