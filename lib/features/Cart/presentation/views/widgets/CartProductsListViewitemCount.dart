import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CountActionButton.dart';

class Cartproductslistviewitemcount extends StatefulWidget {
  const Cartproductslistviewitemcount({
    super.key,
    required this.product,
    required this.count,
  });
  final Cartproductentity product;
  final ValueChanged<int> count;
  @override
  State<Cartproductslistviewitemcount> createState() =>
      _CartproductslistviewitemcountState();
}

class _CartproductslistviewitemcountState
    extends State<Cartproductslistviewitemcount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountActionButton(
          buttonColor: const Color(0xff1B5E37),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 12,
          ),
          ontap: () {
            if (widget.product.count >= 0) {
              widget.product.count += 1;
              widget.count(widget.product.count);
              context.read<CartCubit>().updateCartItem(product: widget.product);
            }
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          widget.product.count.toString(),
          style:
              textStyles.textstyle16.copyWith(color: const Color(0xff06140C)),
        ),
        const SizedBox(
          width: 16,
        ),
        CountActionButton(
          buttonColor: const Color(0xffF3F5F7),
          child: const Icon(
            Icons.remove,
            color: Color(0xff979899),
            size: 12,
          ),
          ontap: () {
            if (widget.product.count > 1) {
              widget.product.count -= 1;
              widget.count(widget.product.count);
              context.read<CartCubit>().updateCartItem(product: widget.product);
            } else {
              context
                  .read<CartCubit>()
                  .removeCartProduct(product: widget.product);
            }
          },
        ),
      ],
    );
  }
}