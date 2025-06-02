// ignore_for_file: file_names

class UserEntity {
  final String name;
  final String email;
  final String uid;
  String? profilePic;

  UserEntity(
      {required this.name,
      required this.email,
      required this.uid,
      this.profilePic});
}
