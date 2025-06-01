import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';

class FilterActionButton extends StatelessWidget {
  const FilterActionButton({super.key, required this.index});
  final String index;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        context.read<ProductsCubit>().sortProductsByPrice(
            isDescending: index == "0" ? false : true,
            products: context.read<List<Productsentity>>());
        Navigator.pop(context);
      },
      text: "تصفيه",
      buttonColor: AppColors.MainColor,
    );
  }
}
