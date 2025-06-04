import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/DateBaseService.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Auth/data/AuthModel/UserModel.dart';
import 'package:fruits/features/CheckOut/data/Models/OrderModel.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/Profile/domain/repos/ProfileRepo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final Datebaseservice databaseService;
  final firebaseAuthService firebaseAuthservice;

  ProfileRepoImpl({
    required this.databaseService,
    required this.firebaseAuthservice,
  });

  @override
  Future<void> editeUserInformations({
    required String name,
    required String email,
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    final userData = getUserData();
    bool needReauthentication = false;
    bool didUpdate = false;

    if ((name.isNotEmpty && name != userData.name) ||
        (email.isNotEmpty && email != userData.email) ||
        currentPassword.isNotEmpty) {
      needReauthentication = true;
    }

    if (needReauthentication) {
      final isAuthenticated =
          await firebaseAuthservice.reauthenticateUser(currentPassword);

      if (!isAuthenticated) {
        throw CustomException(message: "كلمة المرور الحالية غير صحيحة");
      } else {
        if (name.isNotEmpty && name != userData.name) {
          await databaseService.updateDate(
            collectionKey: BackendEndpoints.updateUser,
            data: name,
            doc: userData.uid,
            field: "name",
          );
          await firebaseAuthservice.updateUserName(name: name);
          userData.name = name;
          didUpdate = true;
        }

        if (email.isNotEmpty && email != userData.email) {
          await databaseService.updateDate(
            collectionKey: BackendEndpoints.updateUser,
            data: email,
            doc: userData.uid,
            field: "email",
          );
          await firebaseAuthservice.updateUserEmail(email: email);
          userData.email = email;
          didUpdate = true;
        }

        if (currentPassword.isNotEmpty) {
          if (newPassword.isEmpty || newPassword != confirmPassword) {
            throw CustomException(message: "كلمة المرور الجديدة غير متطابقة");
          }

          if (newPassword == currentPassword) {
            throw CustomException(
                message: "كلمة المرور الجديدة يجب أن تكون مختلفة عن الحالية");
          }

          await firebaseAuthservice.updateUserPassword(password: newPassword);
        }

        if (didUpdate) {
          await shared_preferences_Services.stringSetter(
            key: BackendEndpoints.KuserData,
            value: jsonEncode(UserModel.fromEntity(userData).toMap()),
          );
        }
      }
    }
  }

  @override
  Future<Either<Failure, List<Orderentity>>> getMyOrders() async {
    try {
      List orders = await databaseService.getData(
          path: BackendEndpoints.getMyOrders,
          query: {
            "field": "shippingaddress.userId",
            "value": getUserData().uid
          });
      return Right(
          orders.map((e) => Ordermodel.fromJson(e).toEntity()).toList());
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(
          ServerFailure(message: "فشل تحميل الطلبات,الرجاء المحاولة مرة اخرى"));
    }
  }
}
