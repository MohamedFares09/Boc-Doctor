import 'package:flutter/material.dart';
import 'package:s7tk/screens/home_screen.dart';
import 'package:s7tk/screens/login_screen.dart';
import 'package:s7tk/screens/signup_screen.dart';
import 'package:s7tk/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreens.id:(context)=>LoginScreens(),
        SignupScreens.id : (context)=>SignupScreens(),
       HomeScreens.id : (context)=>HomeScreens(),
      },
    home: SplashScreens(),
    );
  }
}