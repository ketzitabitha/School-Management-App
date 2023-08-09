import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:management/Screens/LoginScreens/login_dashboard.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset('asset/logo.png'),
      splashIconSize: size.width*0.5,
      nextScreen: Login_Dashboard());
  }
}