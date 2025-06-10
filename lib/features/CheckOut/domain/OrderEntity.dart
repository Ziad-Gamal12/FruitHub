import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';

class Orderentity {
  final List<Cartproductentity> orderProducts;
  final String id, status;
  final DateTime createdAt;
  bool? isPaidOnline;
  Orderaddressentity? addressEntity;

  Orderentity({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.orderProducts,
    this.addressEntity,
    this.isPaidOnline,
  });
  double getShippingcost() {
    if (isPaidOnline == true) {
      return 0;
    } else {
      return 30;
    }
  }

  int geteshippingDiscount() {
    return 0;
  }

  double getOrderTotalPrice() {
    double subtotal = orderProducts
        .map((e) => e.calclulateTotalPrice())
        .reduce((a, b) => a + b);

    int discountPercentage = geteshippingDiscount();
    double discountMultiplier = (100 - discountPercentage) / 100;

    return subtotal * discountMultiplier;
  }
}
