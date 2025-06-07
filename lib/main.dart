// ignore_for_file: camel_case_types

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits/core/Helper_Funcitions/OnGenrateRoute.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/managers/cubit/favorite_products_cubit.dart';
import 'package:fruits/core/services/BlocObserver.dart';
import 'package:fruits/core/services/LocalNotifications.dart';
import 'package:fruits/core/services/Shared_preferences.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fruits/features/Splash/presentation/views/Splash_View.dart';
import 'package:fruits/firebase_options.dart';
import 'package:fruits/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await LocalNotifications.init();
  Bloc.observer = Custom_Blocobserver();
  setup_Getit();
  await shared_preferences_Services.init();
  runApp(
    const Fruit_Hub(),
  );
}

class Fruit_Hub extends StatelessWidget {
  const Fruit_Hub({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(
            create: (context) => FavoriteProductsCubit(getIt<Productsrepo>())),
      ],
      child: MaterialApp(
        locale: const Locale("ar"),
        theme:
            ThemeData(fontFamily: "Cairo", primaryColor: AppColors.MainColor),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: Splash_View.routename,
      ),
    );
  }
}
