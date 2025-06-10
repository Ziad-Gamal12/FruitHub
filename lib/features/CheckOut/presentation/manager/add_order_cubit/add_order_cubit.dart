import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/core/Repos/Orders/orders_Repo.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/errors/Failures.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/generated/l10n.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo, this.productsrepo) : super(AddOrderInitial());
  final OrdersRepo ordersRepo;
  final Productsrepo productsrepo;
  void addOrder({required Orderentity orderEntity}) async {
    emit(AddOrderLoading());

    final hasEnoughStock = orderEntity.orderProducts
        .every((element) => element.count < element.productsentity.amout!);

    if (!hasEnoughStock) {
      emit(const AddOrderFailure(
          errmessage: "الكمية المطلوبة أكثر من الكمية المتوفرة"));
      return;
    }

    final orderResult = await ordersRepo.addOrder(orderEntity: orderEntity);

    await orderResult.fold(
      (error) async {
        emit(AddOrderFailure(errmessage: error.message));
      },
      (success) async {
        try {
          for (var element in orderEntity.orderProducts) {
            final updateAmoutResult = await productsrepo.updateProduct(
              productCode: element.productsentity.code,
              field: "amout",
              data: element.productsentity.amout! - element.count,
            );

            if (updateAmoutResult.isLeft()) {
              final error = updateAmoutResult.swap().getOrElse(() =>
                  ServerFailure(message: "حدث خطأ، الرجاء المحاولة مرة أخرى"));
              emit(AddOrderFailure(errmessage: error.toString()));
              return;
            }

            final updateSellingCountResult = await productsrepo.updateProduct(
              productCode: element.productsentity.code,
              field: "sellingCount",
              data: element.productsentity.sellingCount! + element.count,
            );

            if (updateSellingCountResult.isLeft()) {
              final error = updateSellingCountResult.swap().getOrElse(() =>
                  ServerFailure(message: "حدث خطأ، الرجاء المحاولة مرة أخرى"));
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

  void paywithPaypal({required BuildContext context}) {
    var orderEntity = context.read<Orderentity>();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context1) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: payPalClientId,
        secretKey: payPalSecretKey,
        transactions: [PaypalPaymentEntity.fromEntity(orderEntity).toJson()],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) {
          addOrder(orderEntity: orderEntity);
        },
        onError: (error) {
          showSnackBar(
              message: S.of(context).unKnowenErrorMessage, context: context);
          log(error.toString());
          Navigator.of(context).pop();
        },
        onCancel: () {
          log('cancelled:');
        },
      ),
    ));
  }
}
