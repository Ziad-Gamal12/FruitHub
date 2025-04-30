import 'package:fruits/features/Cart/domain/entities/CartEntity.dart';

import 'item.dart';

class ItemList {
  List<Item>? items;

  ItemList({this.items});

  factory ItemList.fromEntity({required Cartentity cartentity}) {
    return ItemList(
        items: cartentity.products
            .map((product) => Item.fromEntity(product))
            .toList());
  }

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
