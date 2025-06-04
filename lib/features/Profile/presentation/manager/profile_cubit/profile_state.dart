part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileGetMyOrdersloading extends ProfileState {}

final class ProfileGetMyOrdersSuccess extends ProfileState {
  final List<Orderentity> orders;
  const ProfileGetMyOrdersSuccess({required this.orders});
}

final class ProfileGetMyOrdersFailure extends ProfileState {
  final String errmessage;
  const ProfileGetMyOrdersFailure({required this.errmessage});
}
