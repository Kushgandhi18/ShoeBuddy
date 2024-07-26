import 'package:flutter/material.dart';
import 'package:shoebuddy/screens/home_screen.dart';
import 'package:shoebuddy/screens/product_detail_screen.dart';
import 'package:shoebuddy/screens/authentication_screen.dart';
import 'package:shoebuddy/screens/checkout_screen.dart';

import '../models/product_model.dart';
import '../screens/profile/profile_page.dart';

class NavigationController {
  static Route<dynamic>? getOnGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case '/ProductDetail':
        if (settings.arguments is ProductModel) {
          final product = settings.arguments as ProductModel;
          return MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          );
        }
        return null;

      case '/Profile':
        return MaterialPageRoute(builder: (context) => ProfileScreen());

      case '/Authentication':
        return MaterialPageRoute(builder: (context) => AuthenticationScreen());

      case '/Checkout':
        return MaterialPageRoute(builder: (context) => CheckoutScreen());

      default:
        return null;
    }
  }
}
