import 'package:fruits/features/CheckOut/data/Models/OrdersProductsModel.dart';
import 'package:fruits/features/CheckOut/data/Models/ShippingAddressModel.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class Ordermodel {
  final String id, status;
  final DateTime createdAt;

  final String paymentMethod;
  final Shippingaddressmodel shippingaddressmodel;
  final List<Ordersproductsmodel> ordersProducts;
  Ordermodel(
      {required this.id,
      required this.status,
      required this.createdAt,
      required this.paymentMethod,
      required this.shippingaddressmodel,
      required this.ordersProducts});

  factory Ordermodel.fromEntity({required Orderentity orderEntity}) {
    return Ordermodel(
        id: orderEntity.id,
        status: orderEntity.status,
        createdAt: orderEntity.createdAt,
        paymentMethod: orderEntity.isPaidOnline == true ? "Online" : "Cash",
        shippingaddressmodel: Shippingaddressmodel.fromEntity(
            orderaddressEntity: orderEntity.addressEntity),
        ordersProducts: orderEntity.cartentity.products
            .map((e) => Ordersproductsmodel.fromEntity(entity: e))
            .toList());
  }
  Map<String, dynamic> toJson() {
    return {
      "uid": id,
      "status": status,
      "createdAt": createdAt,
      "paymentMethod": paymentMethod,
      "shippingaddressmodel": shippingaddressmodel.toJson(),
      "ordersProducts": ordersProducts.map((e) => e.toJson()).toList()
    };
  }
}
//Uid
//PaymentMethod
//ShippingAddress
//List<OrdersProducts>
//
