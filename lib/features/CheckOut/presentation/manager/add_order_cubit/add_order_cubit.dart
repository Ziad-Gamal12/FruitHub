import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits/core/Repos/Orders/orders_Repo.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;
  void addOrder({required Orderentity orderEntity}) async {
    emit(AddOrderLoading());
    var result = await ordersRepo.addOrder(orderEntity: orderEntity);
    result.fold((error) => emit(AddOrderFailure(errmessage: error.message)),
        (success) => emit(AddOrderSuccess()));
  }
}
