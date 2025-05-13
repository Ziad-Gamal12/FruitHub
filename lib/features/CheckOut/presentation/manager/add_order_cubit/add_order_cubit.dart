import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits/core/Repos/Orders/orders_Repo.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo, this.productsrepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;
  final Productsrepo productsrepo;
  void addOrder({required Orderentity orderEntity}) async {
    emit(AddOrderLoading());

    final orderResult = await ordersRepo.addOrder(orderEntity: orderEntity);

    await orderResult.fold(
      (error) async {
        emit(AddOrderFailure(errmessage: error.message));
      },
      (success) async {
        try {
          for (var element in orderEntity.cartentity.products) {
            final updateAmoutResult = await productsrepo.updateProduct(
              productCode: element.productsentity.code,
              field: "amout",
              data: element.productsentity.amout - element.count,
            );

            if (updateAmoutResult.isLeft()) {
              final error = updateAmoutResult.swap().getOrElse(() =>
                  ServerFailure(message: "حدث خطأ,الرجاء المحاولة مرة اخرى"));
              emit(AddOrderFailure(errmessage: error.toString()));
              return;
            }

            final updateSellingCountResult = await productsrepo.updateProduct(
              productCode: element.productsentity.code,
              field: "sellingCount",
              data: element.productsentity.sellingCount + element.count,
            );

            if (updateSellingCountResult.isLeft()) {
              final error = updateSellingCountResult.swap().getOrElse(() =>
                  ServerFailure(message: "حدث خطأ,الرجاء المحاولة مرة اخرى"));
              emit(AddOrderFailure(errmessage: error.toString()));
              return;
            }
          }

          emit(AddOrderSuccess());
        } catch (e) {
          emit(AddOrderFailure(errmessage: e.toString()));
        }
      },
    );
  }
}
