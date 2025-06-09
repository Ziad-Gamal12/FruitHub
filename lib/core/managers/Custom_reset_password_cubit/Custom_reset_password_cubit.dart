// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

part 'Custom_reset_password_state.dart';

class CustomResetPasswordCubit extends Cubit<CustomResetPasswordState> {
  CustomResetPasswordCubit({required this.authrepo})
      : super(CustomResetPasswordInitial());
  final AuthRepo authrepo;
  Future<void> sendResetPasswordEmail(
      {required String email, required BuildContext context}) async {
    emit(CustomResetPasswordLoading());
    try {
      await authrepo.resetPassword(email: email, context: context);
      emit(CustomResetPasswordSuccess());
    } on CustomException catch (e) {
      emit(CustomResetPasswordFailure(errmessage: e.message));
    } catch (e) {
      emit(CustomResetPasswordFailure(errmessage: e.toString()));
    }
  }
}
