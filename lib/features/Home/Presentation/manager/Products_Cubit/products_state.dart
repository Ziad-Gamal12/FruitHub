part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsSuccess extends ProductsState {
  final List<Productsentity> products;

  ProductsSuccess({required this.products});
}

final class ProductsFailure extends ProductsState {
  final String errMessage;

  ProductsFailure({required this.errMessage});
}

final class GetSearchProductsLoading extends ProductsState {}

final class GetSearchProductsSuccess extends ProductsState {
  final List<Productsentity> products;

  GetSearchProductsSuccess({required this.products});
}

final class GetSearchProductsFailure extends ProductsState {
  final String errMessage;

  GetSearchProductsFailure({required this.errMessage});
}
