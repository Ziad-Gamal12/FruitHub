import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});
  factory PaypalPaymentEntity.fromEntity(Orderentity entity) =>
      PaypalPaymentEntity(
          amount: Amount.formEnity(orderEntity: entity),
          description: "paypal payment",
          itemList: ItemList.fromEntity(cartentity: entity.cartentity));
  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'item_list': itemList?.toJson(),
      };
}
