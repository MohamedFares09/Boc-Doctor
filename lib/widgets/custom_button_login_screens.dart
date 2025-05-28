import 'package:flutter/material.dart';
import 'package:s7tk/constants.dart';

class CustomButtonLoginScreen extends StatelessWidget {
  const CustomButtonLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: kprimary, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            "تسحيل الدخول ",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
