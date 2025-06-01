// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/features/Auth/presentation/views/SignIn_View.dart';
import 'package:fruits/features/Auth/presentation/views/SignUpView.dart';
import 'package:fruits/features/BestSeller/Presentation/views/bestSellerView.dart';
import 'package:fruits/features/Cart/domain/entities/CartEntity.dart';
import 'package:fruits/features/Cart/presentation/views/CartView.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/AddOrderSuccessView.dart';
import 'package:fruits/features/CheckOut/presentation/views/CheckoutView.dart';
import 'package:fruits/features/Home/Presentation/views/ProductreviewsView.dart';
import 'package:fruits/features/Home/Presentation/views/homeView.dart';
import 'package:fruits/features/Home/Presentation/views/productDetailsView.dart';
import 'package:fruits/features/Onboarding/presentation/views/onboardingView.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/OrderTrakingView.dart';
import 'package:fruits/features/Splash/presentation/views/Splash_View.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case Splash_View.routename:
      return MaterialPageRoute(builder: (context) => const Splash_View());
    case SignIn_View.LoginViewRoute:
      return MaterialPageRoute(builder: (context) => const SignIn_View());
    case onboardingView.onboardingViewroute:
      return MaterialPageRoute(builder: (context) => const onboardingView());
    case signupview.signupView:
      return MaterialPageRoute(builder: (context) => const signupview());
    case Homeview.homeView:
      return MaterialPageRoute(builder: (context) => const Homeview());
    case bestSellerView.routeName:
      return MaterialPageRoute(builder: (context) => const bestSellerView());

    case Cartview.routename:
      return MaterialPageRoute(builder: (context) => const Cartview());
    case AddrOderSuccessView.routeName:
      return MaterialPageRoute(
          builder: (context) => AddrOderSuccessView(
                order: setting.arguments as Orderentity,
              ));
    case Ordertrakingview.routeName:
      return MaterialPageRoute(
          builder: (context) => Ordertrakingview(
                order: setting.arguments as Orderentity,
              ));
    case Checkoutview.routeName:
      return MaterialPageRoute(
          builder: (context) => Checkoutview(
                cartentity: setting.arguments as Cartentity,
              ));
    case Productdetailsview.routeName:
      return MaterialPageRoute(
          builder: (context) => Productdetailsview(
                product: setting.arguments as Productsentity,
              ));
    case ProductreviewsView.routeName:
      return MaterialPageRoute(
          builder: (context) => ProductreviewsView(
                product: setting.arguments as Productsentity,
              ));
    default:
      return MaterialPageRoute(builder: (context) => const Splash_View());
  }
}
