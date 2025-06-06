part of 'favorite_products_cubit.dart';

sealed class FavoriteProductsState extends Equatable {
  const FavoriteProductsState();

  @override
  List<Object> get props => [];
}

final class FavoriteProductsInitial extends FavoriteProductsState {}

final class FavoriteProductsloading extends FavoriteProductsState {}

final class FavoriteProductsAddedScucess extends FavoriteProductsState {
  final Productsentity product;

  const FavoriteProductsAddedScucess({required this.product});
}

final class FavoriteProductsAddedFailure extends FavoriteProductsState {
  final String message;
  const FavoriteProductsAddedFailure({required this.message});
}

final class FavoriteProductsRemovedScucess extends FavoriteProductsState {
  final Productsentity product;

  const FavoriteProductsRemovedScucess({required this.product});
}

final class FavoriteProductsRemovedFailure extends FavoriteProductsState {
  final String message;
  const FavoriteProductsRemovedFailure({required this.message});
}

final class GetFavoriteProductsLoading extends FavoriteProductsState {}

final class GetFavoriteProductsScucess extends FavoriteProductsState {
  final List<Productsentity> products;

  const GetFavoriteProductsScucess({required this.products});
}

final class GetFavoriteProductsFailure extends FavoriteProductsState {
  final String message;
  const GetFavoriteProductsFailure({required this.message});
}
