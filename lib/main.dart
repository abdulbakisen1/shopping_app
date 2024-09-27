import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/routes/app_routes.dart';
import 'package:provider_shopping/src/data/utils/routes/route_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        cardTheme: CardTheme(

        )
      ),
      debugShowCheckedModeBanner: false,

      onGenerateRoute: RouteService.generateRoute,
      initialRoute: AppRoutes.home,
      
    );
  }
}
