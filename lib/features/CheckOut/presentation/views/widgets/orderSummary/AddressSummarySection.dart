import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/customSectionWidget.dart';
import 'package:svg_flutter/svg.dart';

class AddressSummarySection extends StatelessWidget {
  const AddressSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Customsectionwidget(
        chid: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "عنوان التوصيل",
                style: textStyles.textstyle13
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  variables.checkoutProccessPageViewController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                  context
                      .read<ProccessStepsCubit>()
                      .changeStep(isIcrease: false);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.edit,
                      color: Color(0xff6C7275),
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "تعديل",
                      style: textStyles.textstyle13.copyWith(
                          color: const Color(0xff949D9E),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.assetsImagesLocationIcon),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    "${context.read<Orderentity>().addressEntity}",
                    style: textStyles.textstyle16.copyWith(
                        color: const Color(0xff4E5556),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
