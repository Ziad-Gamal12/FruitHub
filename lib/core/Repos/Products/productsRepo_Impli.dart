// ignore_for_file: file_names

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Models/productsModel.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/DateBaseService.dart';

class ProductsrepoImpli implements Productsrepo {
  final Datebaseservice datebaseservice;

  ProductsrepoImpli({required this.datebaseservice});

  @override
  Future<Either<Failure, List<Productsentity>>> getProducts() async {
    try {
      var products = await datebaseservice.getData(
          path: BackendEndpoints.getProducts) as List<Map<String, dynamic>>;
      List<Productsmodel> productsModel =
          products.map((e) => Productsmodel.fromJson(e)).toList();
      List<Productsentity> productsEntity =
          productsModel.map((e) => e.toEntity()).toList();
      return right(productsEntity);
    } catch (e) {
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, List<Productsentity>>> getBestSellingProducts(
      {required Map<String, dynamic> query}) async {
    try {
      List products = await datebaseservice.getData(
          path: BackendEndpoints.getProducts, query: query);
      List<Productsmodel> productsModel =
          products.map((e) => Productsmodel.fromJson(e)).toList();
      List<Productsentity> productsEntity =
          productsModel.map((e) => e.toEntity()).toList();
      return right(productsEntity);
    } catch (e) {
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, void>> updateProduct(
      {required String productCode,
      required String field,
      required dynamic data}) async {
    try {
      await datebaseservice.updateDate(
          data: data,
          collectionKey: BackendEndpoints.updateProdust,
          doc: productCode,
          field: field);
      return right(null);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      log(e.toString());
      return left(ServerFailure(
          message: "فشل تعديل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, List<Productsentity>>> getSeachProducts(
      {required String keyword}) async {
    try {
      List products = await datebaseservice
          .getData(path: BackendEndpoints.getProducts, query: {
        "startWith": keyword.trim().toLowerCase(),
        "orderBy": "name",
        "descending": false
      });
      List<Productsentity> productsEntity =
          products.map((e) => Productsmodel.fromJson(e).toEntity()).toList();
      return right(productsEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      log(e.toString());
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, void>> addFavouriteProduct(
      {required Productsentity product}) async {
    try {
      await datebaseservice.addData(
          key: BackendEndpoints.addFavouriteProduct,
          docId: getUserData().uid,
          subCollection: BackendEndpoints.favouriteProducts,
          docId2: product.code,
          value: Productsmodel.fromEntity(productsentity: product).toMap());
      return right(null);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, void>> removeFavouriteProduct(
      {required Productsentity product}) async {
    try {
      await datebaseservice.removeData(
          key: BackendEndpoints.removeFavouriteProduct,
          docId: getUserData().uid,
          subCollection: BackendEndpoints.favouriteProducts,
          docId2: product.code);
      return right(null);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }

  @override
  Future<Either<Failure, List<Productsentity>>> getFavouriteProducts() async {
    try {
      List products = await datebaseservice.getData(
          path: BackendEndpoints.getFavouriteProducts,
          docuementId: getUserData().uid,
          subCollection: BackendEndpoints.favouriteProducts);
      List<Productsentity> productsEntity =
          products.map((e) => Productsmodel.fromJson(e).toEntity()).toList();
      return right(productsEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(ServerFailure(
          message: "فشل تحميل المنتجات,الرجاء المحاولة مرة اخرى"));
    }
  }
}
