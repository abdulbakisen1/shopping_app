import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/Splash_screen.dart';
import 'package:provider_shopping/src/app/pages/screens/home.dart';
import 'package:provider_shopping/src/app/pages/screens/signin_screen.dart';
import 'package:provider_shopping/src/app/pages/screens/profile.dart';
import 'package:provider_shopping/src/app/pages/screens/shopping.dart';
import 'package:provider_shopping/src/app/pages/screens/user_information.dart';
import 'package:provider_shopping/src/data/utils/routes/app_routes.dart';


abstract final class RouteService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        case AppRoutes.SplashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
        case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeStatePage());
        case AppRoutes.shopping:
        return MaterialPageRoute(builder: (_) => Shopping());
        case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => ProfilePage()); 
        case AppRoutes.SignIn:
        return MaterialPageRoute(builder: (_) => SignIn());
        case AppRoutes.userinformation:
        return MaterialPageRoute(builder: (_) => UserInformation());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold(), fullscreenDialog: true);
    }
  }
}