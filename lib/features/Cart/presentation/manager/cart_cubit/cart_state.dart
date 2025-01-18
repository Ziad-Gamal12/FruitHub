part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();
  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartAdded extends CartState {}

final class CartRemoved extends CartState {}

final class CartPriceCalculated extends CartState {}

final class CartItemUpdated extends CartState {
  final Cartproductentity product;
  const CartItemUpdated({required this.product});
}
