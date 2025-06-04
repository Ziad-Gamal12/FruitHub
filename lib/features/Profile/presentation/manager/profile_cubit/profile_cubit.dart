import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/Profile/domain/repos/ProfileRepo.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileRepo) : super(ProfileInitial());
  final ProfileRepo profileRepo;

  void getMyOrders() async {
    emit(ProfileGetMyOrdersloading());
    final result = await profileRepo.getMyOrders();
    result.fold((error) {
      emit(ProfileGetMyOrdersFailure(errmessage: error.message));
    }, (orders) {
      emit(ProfileGetMyOrdersSuccess(orders: orders));
    });
  }
}
