import 'package:dartz/dartz.dart';
import 'package:fruits/core/Repos/Orders/orders_Repo.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/DateBaseService.dart';
import 'package:fruits/features/CheckOut/data/Models/OrderModel.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

class OrdersrepoImpl implements OrdersRepo {
  final Datebaseservice datebaseservice;

  OrdersrepoImpl({required this.datebaseservice});
  @override
  Future<Either<Failure, void>> addOrder(
      {required Orderentity orderEntity}) async {
    try {
      await datebaseservice.addData(
        key: BackendEndpoints.addOrder,
        value: Ordermodel.fromEntity(orderEntity: orderEntity).toJson(),
      );
      return right(null);
    } catch (e) {
      return left(
          ServerFailure(message: "حدث خطأ ما. الرجاء المحاولة مرة اخرى"));
    }
  }
}
