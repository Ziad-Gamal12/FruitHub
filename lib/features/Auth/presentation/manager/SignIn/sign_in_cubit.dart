// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithEmailAndPassword(
        email: email, password: password);
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  signInWithGoogle() async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithGoogle();
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  signinWithFacebook() async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithFaceBook();
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }

  siginWithApple() async {
    emit(SignInLoading());
    final resulte = await authRepo.signinWithApple();
    resulte.fold((failur) {
      emit(SignInFailure(message: failur.message));
    }, (userEntity) {
      emit(SignInSuccess(userEntity: userEntity));
    });
  }
}
