import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/DateBaseService.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/features/Auth/data/AuthModel/UserModel.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

class AuthRepo_impl implements AuthRepo {
  final firebaseAuthService authService;
  final Datebaseservice datebaseservice;

  AuthRepo_impl({required this.datebaseservice, required this.authService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String name,
      required String email,
      required String password}) async {
    User? user;
    try {
      user = await authService.createUserWithEmailAndPassword(
          email, password, name);
      var userEntity = UserModel.fromFirebase(user);
      await addUserToFirestore(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await DeleteUser(user);
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      log("Exception From AuthRepo_impl.createUserWithEmailAndPassword : ${e.toString()}");
      DeleteUser(user);
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  Future<void> DeleteUser(User? user) async {
    if (user != null) {
      await authService.deleteUSer();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final user =
          await authService.signInWithEmailAndPassword(email, password);
      var userEntity = await getUSerData(docId: user.uid);
      return right(userEntity);
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
    User? user;
    try {
      user = await authService.signinWithGoogle();
      var userEntity = UserModel.fromFirebase(user);
      bool isUserExists = await datebaseservice.isDataExists(
          key: BackendEndpoints.isUserExists, docId: user.uid);
      if (isUserExists) {
        await getUSerData(docId: user.uid);
      } else {
        await addUserToFirestore(user: userEntity);
      }
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      DeleteUser(user);
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      DeleteUser(user);
      log("Exception From AuthRepo_impl.signinWithGoogle : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFaceBook() async {
    User? user;
    try {
      user = await authService.signinWithFacebook();
      var userEntity = UserModel.fromFirebase(user);
      bool isUserExists = await datebaseservice.isDataExists(
          key: BackendEndpoints.isUserExists, docId: user.uid);
      if (isUserExists) {
        await getUSerData(docId: user.uid);
      } else {
        await addUserToFirestore(user: userEntity);
      }
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      DeleteUser(user);
      return left(ServerFailure(message: e.toString()));
    } catch (e) {
      DeleteUser(user);
      log("Exception From AuthRepo_impl.signinWithFaceBook : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple() async {
    User? user;
    try {
      user = await authService.signInWithApple();
      var userEntity = UserModel.fromFirebase(user);
      bool isUserExists = await datebaseservice.isDataExists(
          key: BackendEndpoints.isUserExists, docId: user.uid);
      if (isUserExists) {
        await getUSerData(docId: user.uid);
      } else {
        await addUserToFirestore(user: userEntity);
      }
      return right(UserModel.fromFirebase(user));
    } catch (e) {
      DeleteUser(user);
      log("Exception From AuthRepo_impl.signinWithApple : ${e.toString()}");
      return left(ServerFailure(message: "حدث خطأ ما"));
    }
  }

  @override
  Future addUserToFirestore({required UserEntity user}) async {
    await datebaseservice.setData(
        docId: user.uid, key: BackendEndpoints.addUserPath, data: user.toMap());
  }

  @override
  Future<UserEntity> getUSerData({required String docId}) async {
    var userEntity = await datebaseservice.getData(
        key: BackendEndpoints.getuserPath, docId: docId);
    return (UserModel.fromMap(userEntity));
  }
}
