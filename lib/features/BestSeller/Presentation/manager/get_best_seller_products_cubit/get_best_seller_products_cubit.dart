import 'package:bloc/bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:meta/meta.dart';

part 'get_best_seller_products_state.dart';

class GetBestSellerProductsCubitCubit
    extends Cubit<GetBestSellerProductsCubitState> {
  GetBestSellerProductsCubitCubit({required this.productsrepo})
      : super(GetBestSellerProductsCubitInitial());
  final Productsrepo productsrepo;
  getBestSellerProducts() async {
    emit(GetBestSellerProductsCubitLoading());
    var result = await productsrepo.getBestSellingProducts(
        query: {"orderBy": "sellingCount", "descending": true, "limit": null});
    result.fold((failure) {
      emit(GetBestSellerProductsCubitFailure(errmessage: failure.message));
    }, (products) {
      emit(GetBestSellerProductsCubitSuccess(products: products));
    });
  }
}
