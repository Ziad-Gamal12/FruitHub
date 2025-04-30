import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required Orderentity orderEntity});
}
