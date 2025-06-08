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
    if (product.reviews!.isEmpty) return 0.0;
    for (var review in product.reviews!) {
      ratings += (review.reating.round());
    }
    return (ratings / product.reviews!.length);
  }

  double calculateOverallReviewPercentage(List<int> reviewsRatings) {
    if (reviewsRatings.isEmpty) return 0;

    int total = reviewsRatings.reduce((a, b) => a + b);
    double average = total / reviewsRatings.length;

    return (average / 5.0) * 100;
  }

  void getSearchProducts({required String keyword}) async {
    emit(GetSearchProductsLoading());
    final result = await productsrepo.getSeachProducts(
      keyword: keyword,
    );
    result.fold((failure) {
      emit(GetSearchProductsFailure(errMessage: failure.message));
    }, (productsEntity) {
      emit(GetSearchProductsSuccess(products: productsEntity));
    });
  }

  List<Productsentity> sortProductsByPrice(
      {required List<Productsentity> products, required bool isDescending}) {
    if (products.length <= 1) {
      return products;
    }
    int middleIndex = products.length ~/ 2;
    List<Productsentity> left = sortProductsByPrice(
        isDescending: isDescending, products: products.sublist(0, middleIndex));
    List<Productsentity> right = sortProductsByPrice(
        isDescending: isDescending,
        products: products.sublist(middleIndex, products.length));
    return merge(left: left, right: right, isDescending: isDescending);
  }

  List<Productsentity> merge(
      {required List<Productsentity> left,
      required List<Productsentity> right,
      required bool isDescending}) {
    int i = 0;
    int j = 0;
    List<Productsentity> sortedProducts = [];
    while (i < left.length && j < right.length) {
      double price1 = double.parse(left[i].price);
      double price2 = double.parse(right[j].price);
      if (!isDescending) {
        if (price1 <= price2) {
          sortedProducts.add(left[i]);
          i += 1;
        } else {
          sortedProducts.add(right[j]);
          j += 1;
        }
      } else {
        if (price1 >= price2) {
          sortedProducts.add(left[i]);
          i += 1;
        } else {
          sortedProducts.add(right[j]);
          j += 1;
        }
      }
    }
    while (i < left.length) {
      sortedProducts.add(left[i]);
      i += 1;
    }
    while (j < right.length) {
      sortedProducts.add(right[j]);
      j += 1;
    }
    return sortedProducts;
  }
}
