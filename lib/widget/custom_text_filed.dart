import 'package:flutter/material.dart';
import 'package:s7tk/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.icon,
    required this.hintText,
    required this.controller,
    this.validator,
    this.obscureText 
  });

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
final String? Function(String?)? validator;
final bool ?obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        obscureText:obscureText == null ? false : obscureText!,
        controller: controller,
        textAlign: TextAlign.right,
        cursorColor: kprimary,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[100],
          hintText: hintText,
          suffixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: kprimary, width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
          ),
        ),
        validator:validator
      ),
    );
  }
}