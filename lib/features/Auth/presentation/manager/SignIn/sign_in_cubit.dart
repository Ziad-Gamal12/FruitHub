// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  signInWithEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithEmailAndPassword(
        context: context, email: email, password: password);
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  signInWithGoogle({required BuildContext context}) async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithGoogle(context: context);
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  signinWithFacebook({required BuildContext context}) async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithFaceBook(context: context);
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  siginWithApple({required BuildContext context}) async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithApple(context: context);
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }
}
