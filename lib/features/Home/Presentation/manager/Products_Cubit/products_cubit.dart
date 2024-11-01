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
    final result = await productsrepo.getBestSellingProducts();
    result.fold((failure) {
      emit(ProductsFailure(errMessage: failure.message));
    }, (productsEntity) {
      emit(ProductsSuccess(products: productsEntity));
    });
  }
}
