import 'package:dartz/dartz.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

class Cartentity {
  final List<Cartproductentity> products;

  Cartentity(this.products);
  addCartProductEntity({required Cartproductentity product}) {
    products.add(product);
  }

  Either<bool, Cartproductentity> isExist(Productsentity productEntity) {
    for (var productitem in products) {
      if (productitem.productsentity.code == productEntity.code) {
        return right(productitem);
      }
    }

    return left(false);
  }

  double getTotalPrice() {
    double totalPrice = 0;
    for (var cartProductitem in products) {
      totalPrice += cartProductitem.calclulateTotalPrice();
    }
    return totalPrice;
  }
}
