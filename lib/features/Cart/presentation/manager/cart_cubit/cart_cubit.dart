import 'package:bloc/bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Cart/domain/entities/CartEntity.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  //chech if the product item is exists in the cart
  //if exists incease the product item count
  //if not add new product item with count =1
  Cartentity cartentity = Cartentity([]);
  addProduct({required Productsentity product}) {
    var isExist = cartentity.isExist(product);
    isExist.fold((notExist) {
      Cartproductentity newProduct =
          Cartproductentity(productsentity: product, count: 1);
      cartentity.addCartProductEntity(product: newProduct);
    }, (cartProductEntity) {
      cartProductEntity.count += 1;
    });
    emit(CartAdded());
  }

  double getTotalPrice() {
    return cartentity.getTotalPrice();
  }
}
