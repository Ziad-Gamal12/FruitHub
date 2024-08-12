part of 'sign_up_cubit.dart';

sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpFailure extends SignUpState {
  final String message;
  SignUpFailure({required this.message});
}

final class SignUpSuccess extends SignUpState {
  final UserEntity userEntity;
  SignUpSuccess({required this.userEntity});
}
