// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.name,
      required super.email,
      super.profilePic,
      required super.uid});

  factory UserModel.fromFirebase(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uid: user.uid,
      profilePic: user.photoURL ??
          'https://firebasestorage.googleapis.com/v0/b/fruithub-973f6.appspot.com/o/Profile_Picture.png?alt=media&token=ee6ba1fc-d5d2-4d6b-9f5f-36e05dae9a78',
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uid: json['uid'],
      profilePic: json['profilePic'] ??
          "https://firebasestorage.googleapis.com/v0/b/fruithub-973f6.appspot.com/o/Profile_Picture.png?alt=media&token=ee6ba1fc-d5d2-4d6b-9f5f-36e05dae9a78",
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uid: user.uid,
      profilePic: user.profilePic,
    );
  }

  toMap() {
    return {'name': name, 'email': email, 'uid': uid, 'profilePic': profilePic};
  }
}
