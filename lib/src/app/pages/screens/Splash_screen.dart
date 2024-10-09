import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2), // Animasyonun süresi
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Animasyonu başlatıyoruz
    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/SignIn'); // kayıt ola bağlıyor
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.orange, 
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: const Text(
            'Shopping',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: ColorConstants.background, 
            ),
          ),
        ),
      ),
    );
  }
}
