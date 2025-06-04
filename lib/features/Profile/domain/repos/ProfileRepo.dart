// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

abstract class ProfileRepo {
  Future<void> editeUserInformations({
    required String name,
    required String email,
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  });
  Future<Either<Failure, List<Orderentity>>> getMyOrders();
}
