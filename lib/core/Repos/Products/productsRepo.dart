// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/errors/Failures.dart';

abstract class Productsrepo {
  Future<Either<Failure, List<Productsentity>>> getProducts();
  Future<Either<Failure, List<Productsentity>>> getBestSellingProducts(
      {required Map<String, dynamic> query});
  Future<Either<Failure, void>> updateProduct(
      {required String productCode,
      required String field,
      required dynamic data});
  Future<Either<Failure, List<Productsentity>>> getSeachProducts(
      {required String keyword});
}
