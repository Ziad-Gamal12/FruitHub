import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uid});

  factory UserModel.fromFirebase(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uid: user.uid,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uid: json['uid'],
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uid: user.uid,
    );
  }

  toMap() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
    };
  }
}
