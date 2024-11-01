// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/errors/Failures.dart';

abstract class Productsrepo {
  Future<Either<Failure, List<Productsentity>>> getProducts();
  Future<Either<Failure, List<Productsentity>>> getBestSellingProducts();
}
