import 'package:fruits/features/Cart/domain/entities/CartEntity.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';

class Orderentity {
  final Cartentity cartentity;
  final String id, status;
  final DateTime createdAt;
  bool? isPaidOnline;
  Orderaddressentity addressEntity = Orderaddressentity();

  Orderentity({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.cartentity,
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

  getOrderTotalPrice() {
    return ((cartentity.getTotalPrice() + geteshippingDiscount()) *
        ((100 - geteshippingDiscount()) / 100));
  }
}
