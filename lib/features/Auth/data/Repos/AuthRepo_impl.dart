// ignore_for_file: file_names, camel_case_types, use_build_context_synchronously

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/core/services/DateBaseService.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Auth/data/AuthModel/UserModel.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
import 'package:fruits/generated/l10n.dart';

class AuthRepo_impl implements AuthRepo {
  final firebaseAuthService authService;
  final Datebaseservice databaseService;

  AuthRepo_impl({required this.databaseService, required this.authService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String name,
      required String email,
      required String password,
      required BuildContext context}) async {
    User? user;
    try {
      user = await authService.createUserWithEmailAndPassword(
        email,
        password,
        name,
      );
      var userEntity = UserEntity(
        name: name,
        email: email,
        uid: user.uid,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(message: e.message));
    } catch (e) {
      await deleteUser(user);

      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      var user = await authService.signInWithEmailAndPassword(email, password);
      var userEntity = await getUserData(uid: user.uid);
      await saveUserData(user: userEntity);
      return right(
        userEntity,
      );
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle(
      {required BuildContext context}) async {
    User? user;
    bool? isUserExist;
    try {
      user = await authService.signinWithGoogle();
      var userEntity = UserModel.fromFirebase(user);
      isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoints.isUserExists, docuementId: user.uid);
      if (isUserExist) {
        var userEntity = await getUserData(uid: user.uid);
        await saveUserData(user: userEntity);
      } else {
        await addUserData(user: userEntity);
        await saveUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      if (isUserExist == true) {
        signout(user);
      } else {
        deleteUser(user);
      }

      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFaceBook(
      {required BuildContext context}) async {
    User? user;
    bool? isUserExist;
    try {
      user = await authService.signinWithFacebook();
      var userEntity = UserModel.fromFirebase(user);
      isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoints.isUserExists, docuementId: user.uid);
      if (isUserExist) {
        var userEntity = await getUserData(uid: user.uid);
        await saveUserData(user: userEntity);
      } else {
        await saveUserData(user: userEntity);
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      if (isUserExist == true) {
        signout(user);
      } else {
        deleteUser(user);
      }
      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithApple(
      {required BuildContext context}) async {
    User? user;
    bool? isUserExist;
    try {
      user = await authService.signInWithApple();
      var userEntity = UserModel.fromFirebase(user);
      isUserExist = await databaseService.checkIfDataExists(
          path: BackendEndpoints.isUserExists, docuementId: user.uid);
      if (isUserExist) {
        var userEntity = await getUserData(uid: user.uid);
        await saveUserData(user: userEntity);
      } else {
        await addUserData(user: userEntity);
        await saveUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      if (isUserExist == true) {
        signout(user);
      } else {
        deleteUser(user);
      }

      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await authService.deleteUser();
    }
  }

  Future<void> signout(User? user) async {
    if (user != null) {
      await authService.signout();
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
        docId: user.uid,
        key: BackendEndpoints.addUserPath,
        value: UserModel.fromEntity(user).toMap());
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData = await databaseService.getData(
        path: BackendEndpoints.getuserPath, docuementId: uid);
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await shared_preferences_Services.stringSetter(
        key: BackendEndpoints.KuserData, value: jsonData);
  }

  @override
  Future<Either<Failure, void>> resetPassword(
      {required String email, required BuildContext context}) async {
    try {
      await authService.sendPasswordResetEmail(email: email);
      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          message: S.of(context).unKnowenErrorMessage,
        ),
      );
    }
  }
}
