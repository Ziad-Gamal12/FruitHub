class Orderaddressentity {
  String? userId, fullname, email, address, city, flatNumber, phoneNumber;

  Orderaddressentity(
      {this.phoneNumber,
      this.fullname,
      this.email,
      this.userId,
      this.address,
      this.city,
      this.flatNumber});
  @override
  String toString() {
    return "$address, $city, $flatNumber";
  }
}
