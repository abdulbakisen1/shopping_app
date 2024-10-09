import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping/src/app/states/provider.dart';
import 'package:provider_shopping/src/data/utils/routes/app_routes.dart';
import 'package:provider_shopping/src/data/utils/routes/route_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ShoppingProvider()), // ShoppingProvider ekleniyor
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        cardTheme:const CardTheme(
        )
      ),
      debugShowCheckedModeBanner: false,

      onGenerateRoute: RouteService.generateRoute,
      initialRoute: AppRoutes.SplashScreen,
      
    );
  }
}
