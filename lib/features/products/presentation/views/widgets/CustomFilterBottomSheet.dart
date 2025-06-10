import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomBottomSheet.dart';
import 'package:fruits/core/widgets/CustomBottomSheetHeader.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/products/presentation/views/widgets/FilterActionButton.dart';
import 'package:fruits/features/products/presentation/views/widgets/FilterOptionsSection.dart';
import 'package:provider/provider.dart';

class CustomFilterBottomSheet extends StatefulWidget {
  const CustomFilterBottomSheet(
      {super.key, required this.onValueChanged, required this.products});
  final ValueChanged<String> onValueChanged;
  final List<Productsentity> products;
  @override
  State<CustomFilterBottomSheet> createState() =>
      _CustomFilterBottomSheetState();
}

class _CustomFilterBottomSheetState extends State<CustomFilterBottomSheet> {
  String selectedValue = "-1";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(productsrepo: getIt<Productsrepo>()),
      child: Provider.value(
          value: widget.products,
          child: IntrinsicHeight(
            child: Custombottomsheet(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBottomSheetHeader(),
                  const SizedBox(height: 26),
                  FilterOptionsSection(
                    selectedValue: selectedValue,
                    onValueChanged: (val) => setState(() {
                      selectedValue = val;
                      widget.onValueChanged(val);
                    }),
                  ),
                  const SizedBox(height: 20),
                  FilterActionButton(
                    index: selectedValue,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
