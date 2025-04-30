import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/add_order_cubit/add_order_cubit.dart';

class Payingoptionentity {
  final String image;
  final Color cardColor;
  final VoidCallback action;
  final EdgeInsets cardPadding;
  Payingoptionentity({
    required this.image,
    required this.cardColor,
    required this.action,
    required this.cardPadding,
  });

  static List<Payingoptionentity> optionsList(BuildContext context) {
    return [
      Payingoptionentity(
          cardPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
          image: Assets.assetsImagesApplePayIcon,
          cardColor: Colors.white,
          action: () {}),
      Payingoptionentity(
          cardPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          image: Assets.assetsImagesPaypalIcon,
          cardColor: Colors.white,
          action: () {
            var orderEntity = context.read<Orderentity>();
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context1) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: payPalClientId,
                secretKey: payPalSecretKey,
                transactions: [
                  PaypalPaymentEntity.fromEntity(orderEntity).toJson()
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) {
                  Navigator.of(context).pop();
                  context
                      .read<AddOrderCubit>()
                      .addOrder(orderEntity: orderEntity);
                },
                onError: (error) {
                  Navigator.of(context).pop();
                },
                onCancel: () {
                  print('cancelled:');
                },
              ),
            ));
          }),
      Payingoptionentity(
          cardPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          image: Assets.assetsImagesMastercardIcon,
          cardColor: Colors.white,
          action: () {}),
      Payingoptionentity(
          cardPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          image: Assets.assetsImagesVisaIcon,
          cardColor: const Color(0xff1434CB),
          action: () {}),
    ];
  }
}
