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
  Future addUserToFirestore({required UserEntity user});
}
