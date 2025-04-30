import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';

class Shippingaddressmodel {
  final String fullname, email, address, city, flatNumber, phoneNumber;

  Shippingaddressmodel(
      {required this.fullname,
      required this.email,
      required this.address,
      required this.city,
      required this.flatNumber,
      required this.phoneNumber});
  factory Shippingaddressmodel.fromEntity(
      {required Orderaddressentity orderaddressEntity}) {
    return Shippingaddressmodel(
        fullname: orderaddressEntity.fullname!,
        email: orderaddressEntity.email!,
        address: orderaddressEntity.address!,
        city: orderaddressEntity.city!,
        flatNumber: orderaddressEntity.flatNumber!,
        phoneNumber: orderaddressEntity.phoneNumber!);
  }
  toJson() {
    return {
      "fullname": fullname,
      "email": email,
      "address": address,
      "city": city,
      "flatNumber": flatNumber,
      "phoneNumber": phoneNumber,
    };
  }
}
