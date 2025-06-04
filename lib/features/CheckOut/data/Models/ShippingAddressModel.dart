import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';

class Shippingaddressmodel {
  final String userId, fullname, email, address, city, flatNumber, phoneNumber;

  Shippingaddressmodel(
      {required this.fullname,
      required this.email,
      required this.userId,
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
        userId: orderaddressEntity.userId!,
        city: orderaddressEntity.city!,
        flatNumber: orderaddressEntity.flatNumber!,
        phoneNumber: orderaddressEntity.phoneNumber!);
  }
  factory Shippingaddressmodel.fromJson(Map<String, dynamic> json) {
    return Shippingaddressmodel(
        fullname: json["fullname"],
        email: json["email"],
        address: json["address"],
        userId: json["userId"],
        city: json["city"],
        flatNumber: json["flatNumber"],
        phoneNumber: json["phoneNumber"]);
  }
  Orderaddressentity toEntity() {
    return Orderaddressentity(
        fullname: fullname,
        email: email,
        address: address,
        userId: userId,
        city: city,
        flatNumber: flatNumber,
        phoneNumber: phoneNumber);
  }

  Map<String, dynamic> toJson() {
    return {
      "fullname": fullname,
      "email": email,
      "address": address,
      "userId": userId,
      "city": city,
      "flatNumber": flatNumber,
      "phoneNumber": phoneNumber,
    };
  }
}
