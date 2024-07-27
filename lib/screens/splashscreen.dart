import 'package:flutter/material.dart';
import 'package:islamicapp/screens/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  static String id='SplashScreen';
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.only(top: 47),
      child: AnimatedSplashScreen(
        splashIconSize: 2000,
        duration: 2500,
        splash: SingleChildScrollView(
          child: Column(children: [Image.asset('dark mode/splash.png',fit: BoxFit.fill,)],
          
          ),
        ),
        nextScreen: homepage(),
      ),
    );
        
     
  }
}