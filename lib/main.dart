import 'package:flutter/material.dart';
import 'package:islamicapp/screens/home.dart';
import 'package:islamicapp/screens/suraDetails.dart';
import 'package:islamicapp/screens/splashscreen.dart';
import 'package:islamicapp/screens/hadeethDetails.dart';
import 'package:islamicapp/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const islamicapp());
}

class islamicapp extends StatelessWidget {
  const islamicapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p2, p3) {
      return MaterialApp(
        initialRoute: SplashScreen.id,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
        routes: {
          homepage.id: (context) => const homepage(),
          SplashScreen.id: (context) => const SplashScreen(),
          suraDetails.id: (context) => const suraDetails(),
          hadeethDetails.id: (context) => const hadeethDetails()
        },
      );
    });
  }
}
