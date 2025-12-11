import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Fade-in animation
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // Navigate to LoginScreen after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const LoginScreen(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08299b),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2),
          child: Image.asset("lib/assets/cignifi.png", height: 80),
        ),
      ),
    );
  }
}
