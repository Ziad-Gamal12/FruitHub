import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/CheckOut/data/Models/ShippingAddressModel.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';

part 'proccess_steps_state.dart';

class ProccessStepsCubit extends Cubit<ProccessStepsState> {
  ProccessStepsCubit() : super(ProccessStepsInitial());
  int currentStep = 0;

  void changeStep({
    bool? isIcrease,
    int? stepchangenumber,
  }) {
    if (stepchangenumber != null) {
      currentStep = stepchangenumber;
    } else if (isIcrease == null || isIcrease == true) {
      currentStep++;
    } else {
      currentStep--;
    }
    emit(ProccessStepsCompleted());
  }

  void saveAddress({required List<Orderaddressentity> addresses}) async {
    String addressesJson = jsonEncode(addresses
        .map((e) =>
            Shippingaddressmodel.fromEntity(orderaddressEntity: e).toJson())
        .toList());
    await shared_preferences_Services.stringSetter(
        key: BackendEndpoints.shippingAddressesList, value: addressesJson);
  }

  List<Orderaddressentity> getAddresses() {
    String? addressesJson = shared_preferences_Services.stringgetter(
        key: BackendEndpoints.shippingAddressesList);
    if (addressesJson != null) {
      List<Map<String, dynamic>> addresses =
          List<Map<String, dynamic>>.from(jsonDecode(addressesJson));
      return addresses
          .map((e) => Shippingaddressmodel.fromJson(e).toEntity())
          .toList();
    } else {
      return [];
    }
  }

  void applySavedAddress({required Orderaddressentity address}) {
    variables.CheckoutAddressAddressController.text = address.address ?? "";
    variables.CheckoutAddressCityController.text = address.city ?? "";
    variables.CheckoutAddressFlatNumberController.text =
        address.flatNumber ?? "";
    variables.CheckoutAddressphoneNumberController.text =
        address.phoneNumber ?? "";
    variables.CheckoutAddressFullNameController.text = address.fullname ?? "";
    variables.CheckoutAddressEmailAddressController.text = address.email ?? "";
    emit(AppliedSavedAddress());
  }
}
