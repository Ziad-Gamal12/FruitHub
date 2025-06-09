// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';

part 'favorite_products_state.dart';

class FavoriteProductsCubit extends Cubit<FavoriteProductsState> {
  FavoriteProductsCubit(this.productsrepo) : super(FavoriteProductsInitial());

  final Productsrepo productsrepo;

  List<Productsentity> favouriteProducts = [];
  void addFavouriteProduct({required Productsentity product}) async {
    emit(FavoriteProductsloading());
    final result = await productsrepo.addFavouriteProduct(product: product);
    result.fold((failure) {
      emit(FavoriteProductsAddedFailure(message: failure.message));
    }, (success) {
      emit(FavoriteProductsAddedScucess(product: product));
    });
  }

  void removeFavouriteProduct({required Productsentity product}) async {
    emit(FavoriteProductsloading());
    final result = await productsrepo.removeFavouriteProduct(product: product);
    result.fold((failure) {
      emit(FavoriteProductsRemovedFailure(message: failure.message));
    }, (success) {
      emit(FavoriteProductsRemovedScucess(product: product));
    });
  }

  void getFavouriteProducts() async {
    emit(GetFavoriteProductsLoading());
    final result = await productsrepo.getFavouriteProducts();
    result.fold((failure) {
      emit(GetFavoriteProductsFailure(message: failure.message));
    }, (success) {
      favouriteProducts = success;
      emit(GetFavoriteProductsScucess(products: success));
    });
  }

  bool isFavourite(Productsentity product) {
    for (var element in favouriteProducts) {
      if (element.code == product.code) {
        return true;
      }
    }
    return false;
  }
}
