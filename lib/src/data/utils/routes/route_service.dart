import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/Splash_screen.dart';
import 'package:provider_shopping/src/app/pages/screens/address_information.dart';
import 'package:provider_shopping/src/app/pages/screens/edit_address.dart';
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
        return MaterialPageRoute(builder: (_) => const Shopping());
        case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage()); 
        case AppRoutes.SignIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
        case AppRoutes.userinformation:
        return MaterialPageRoute(builder: (_) => const UserInformation());
        case AppRoutes.addressinformation:
        return MaterialPageRoute(builder: (_) => const AddressInformationPage());
        case AppRoutes.EditAddress:
        return MaterialPageRoute(builder: (_) => const EditAddresspage());
        case AppRoutes.emailchenge:
        return MaterialPageRoute(builder: (_) => const EditAddresspage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold(), fullscreenDialog: true);
    }
  }
}