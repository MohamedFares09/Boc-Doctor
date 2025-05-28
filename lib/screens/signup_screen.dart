import 'package:flutter/material.dart';
import 'package:s7tk/widget/sign_up_screens_body.dart';


class SignupScreens extends StatelessWidget {
  const SignupScreens({super.key});
  static String id = "signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpScreensBody(),
    );
  }
}