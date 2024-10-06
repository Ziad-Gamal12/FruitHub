import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/features/Auth/data/AuthModel/UserModel.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

class AuthRepo_impl implements AuthRepo {
  final firebaseAuthService authService;

  AuthRepo_impl({required this.authService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final user = await authService.createUserWithEmailAndPassword(
          email, password, name);
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception From AuthRepo_impl.createUserWithEmailAndPassword : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final user =
          await authService.signInWithEmailAndPassword(email, password);
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      log("Exception From AuthRepo_impl.signinWithEmailAndPassword : ${e.toString()}");
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception From AuthRepo_impl.signinWithEmailAndPassword : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      final user = await authService.signinWithGoogle();
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception From AuthRepo_impl.signinWithGoogle : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFaceBook() async {
    try {
      final user = await authService.signinWithFacebook();
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception From AuthRepo_impl.signinWithFaceBook : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() async {
    try {
      final user = await authService.signInWithApple();
      return right(UserModel.fromFirebase(user));
    } catch (e) {
      log("Exception From AuthRepo_impl.signinWithApple : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }
}
