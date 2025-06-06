// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  bool isTermsAccepted = false;

  final AuthRepo authRepo;
  Future<void> signUp(
      {required String email,
      required String password,
      required BuildContext context,
      required String name}) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
        context: context, email: email, password: password, name: name);
    result.fold((failure) => emit(SignUpFailure(message: failure.message)),
        (userEntity) => emit(SignUpSuccess(userEntity: userEntity)));
  }

  @override
  void onChange(Change<SignUpState> change) {
    super.onChange(change);
    if (kDebugMode) {
      print(change);
    }
  }
}
