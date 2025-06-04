import 'package:cloud_firestore/cloud_firestore.dart';
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
            orderaddressEntity: orderEntity.addressEntity!),
        ordersProducts: orderEntity.orderProducts
            .map((e) => Ordersproductsmodel.fromEntity(entity: e))
            .toList());
  }
  factory Ordermodel.fromJson(Map<String, dynamic> json) {
    return Ordermodel(
        id: json["id"],
        status: json["status"],
        createdAt: (json["createdAt"] as Timestamp).toDate(),
        paymentMethod: json["paymentMethod"],
        shippingaddressmodel:
            Shippingaddressmodel.fromJson(json["shippingaddress"]),
        ordersProducts: (json["ordersProducts"] as List)
            .map((e) => Ordersproductsmodel.fromJson(e))
            .toList());
  }
  Orderentity toEntity() {
    return Orderentity(
        id: id,
        status: status,
        createdAt: createdAt,
        isPaidOnline: paymentMethod == "Online" ? true : false,
        addressEntity: shippingaddressmodel.toEntity(),
        orderProducts: ordersProducts.map((e) => e.toEntity()).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "status": status,
      "createdAt": createdAt,
      "paymentMethod": paymentMethod,
      "shippingaddress": shippingaddressmodel.toJson(),
      "ordersProducts": ordersProducts.map((e) => e.toJson()).toList()
    };
  }
}
//Uid
//PaymentMethod
//ShippingAddress
//List<OrdersProducts>
//
