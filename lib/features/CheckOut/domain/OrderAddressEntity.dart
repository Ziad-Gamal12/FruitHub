class Orderaddressentity {
  String? fullname, email, address, city, flatNumber, phoneNumber;

  Orderaddressentity(
      {this.phoneNumber,
      this.fullname,
      this.email,
      this.address,
      this.city,
      this.flatNumber});
  @override
  String toString() {
    return "$address, $city, $flatNumber";
  }
}
