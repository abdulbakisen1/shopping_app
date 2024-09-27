import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/home.dart';
import 'package:provider_shopping/src/app/pages/screens/profile.dart';
import 'package:provider_shopping/src/app/pages/screens/shopping.dart';
import 'package:provider_shopping/src/data/utils/routes/app_routes.dart';


abstract final class RouteService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeStatePage());
        case AppRoutes.shopping:
        return MaterialPageRoute(builder: (_) => Shopping());
        case AppRoutes.Profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold(), fullscreenDialog: true);
    }
  }
}