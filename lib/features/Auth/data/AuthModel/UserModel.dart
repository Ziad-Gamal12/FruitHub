import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uid});
  factory UserModel.fromFirebase(User user) {
    return UserModel(
        name: user.displayName!, email: user.email!, uid: user.uid);
  }
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], email: map['email'], uid: map['uid']);
  }
}
