import 'dart:convert';

import 'package:fruits/core/Utils/Backend_EndPoints.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/features/Auth/data/AuthModel/UserModel.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';

UserEntity getUserData() {
  String jsonString = shared_preferences_Services.stringgetter(
      key: BackendEndpoints.KuserData)!;
  return UserModel.fromJson(jsonDecode(jsonString));
}
