import 'package:flutter/material.dart';
import 'package:s7tk/widgets/login_screen_body.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});
  static String id = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenBody(),
    );
  }
}
