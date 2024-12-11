part of 'get_best_seller_products_cubit.dart';

@immutable
sealed class GetBestSellerProductsCubitState {}

final class GetBestSellerProductsCubitInitial
    extends GetBestSellerProductsCubitState {}

final class GetBestSellerProductsCubitSuccess
    extends GetBestSellerProductsCubitState {
  final List<Productsentity> products;

  GetBestSellerProductsCubitSuccess({required this.products});
}

final class GetBestSellerProductsCubitFailure
    extends GetBestSellerProductsCubitState {
  final String errmessage;

  GetBestSellerProductsCubitFailure({required this.errmessage});
}

final class GetBestSellerProductsCubitLoading
    extends GetBestSellerProductsCubitState {}
