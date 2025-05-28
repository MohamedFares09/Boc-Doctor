
import 'package:flutter/material.dart';
import 'package:s7tk/constants.dart';

class CustomButtonSignUp extends StatelessWidget {
  const CustomButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        height: 25,
        width: 75,
        decoration: BoxDecoration(
            color: kprimary, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            "التالي",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ) ;
  }
}