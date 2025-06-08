import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Cart/domain/entities/CartProductEntity.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductListViewItemDetails.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewItemImage.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartProductsListViewitemCount.dart';
import 'package:fruits/features/Home/Presentation/views/productDetailsView.dart';
import 'package:svg_flutter/svg.dart';

class Cartproductslistviewitem extends StatefulWidget {
  const Cartproductslistviewitem({super.key, required this.product});
  final Cartproductentity product;

  @override
  State<Cartproductslistviewitem> createState() =>
      _CartproductslistviewitemState();
}

class _CartproductslistviewitemState extends State<Cartproductslistviewitem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          if (current.product == widget.product) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Productdetailsview.routeName,
                  arguments: widget.product.productsentity);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Cartproductslistviewitemimage(
                  product: widget.product,
                ),
                const SizedBox(
                  width: 17,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CartProductListViewItemDetails(
                            product: widget.product,
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () {
                                  context.read<CartCubit>().removeCartProduct(
                                      product: widget.product);
                                },
                                child:
                                    SvgPicture.asset(Assets.assetsImagesTrash)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Cartproductslistviewitemcount(
                            product: widget.product,
                            count: (value) {
                              setState(() {});
                            },
                          ),
                          const Spacer(),
                          Text(
                            "${widget.product.calclulateTotalPrice()} جنيه ",
                            style: textStyles(context: context)
                                .textstyle16
                                .copyWith(
                                    color: AppColors.KsecondaryColor,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
