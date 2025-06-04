// ignore_for_file: file_names

class UserEntity {
  String name;
  String email;
  String uid;
  String? profilePic;

  UserEntity(
      {required this.name,
      required this.email,
      required this.uid,
      this.profilePic});
}
