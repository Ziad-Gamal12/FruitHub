// ignore_for_file: file_names, non_constant_identifier_names

import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/Repos/Products/productsRepo_Impli.dart';
import 'package:fruits/core/services/DateBaseService.dart';
import 'package:fruits/core/services/FirebaseAuth_Service.dart';
import 'package:fruits/core/services/Firebase_FirestoreService.dart';
import 'package:fruits/features/Auth/data/Repos/AuthRepo_impl.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup_Getit() {
  getIt.registerSingleton<firebaseAuthService>(firebaseAuthService());
  getIt.registerSingleton<Datebaseservice>(FirebaseFirestoreservice());
  getIt.registerSingleton<Productsrepo>(
      ProductsrepoImpli(datebaseservice: getIt<Datebaseservice>()));
  getIt.registerSingleton<AuthRepo>(AuthRepo_impl(
      authService: getIt<firebaseAuthService>(),
      databaseService: getIt<Datebaseservice>()));
}
