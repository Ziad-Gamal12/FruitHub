// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.productsrepo}) : super(ProductsInitial());
  final Productsrepo productsrepo;
  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    final result = await productsrepo.getBestSellingProducts(
        query: {"orderBy": "sellingCount", "descending": true, "limit": 10});
    result.fold((failure) {
      emit(ProductsFailure(errMessage: failure.message));
    }, (productsEntity) {
      emit(ProductsSuccess(products: productsEntity));
    });
  }

  double getproductStarRate({required Productsentity product}) {
    int ratings = 0;
    if (product.reviews.isEmpty) return 0.0;
    for (var review in product.reviews) {
      ratings += (review.reating.round());
    }
    return (ratings / product.reviews.length);
  }
}
