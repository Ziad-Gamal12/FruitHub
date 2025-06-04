import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';

import 'item.dart';

class ItemList {
  List<Item>? items;

  ItemList({this.items});

  factory ItemList.fromEntity({required List<Cartproductentity> cartProducts}) {
    return ItemList(
        items:
            cartProducts.map((product) => Item.fromEntity(product)).toList());
  }

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
