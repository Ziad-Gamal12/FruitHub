// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String name, required String email, required String password});
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<Failure, UserEntity>> signinWithGoogle();
  Future<Either<Failure, UserEntity>> signinWithFaceBook();
  Future<Either<Failure, UserEntity>> signinWithApple();
  Future<void> addUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uid});
  Future<void> saveUserData({required UserEntity user});
}
