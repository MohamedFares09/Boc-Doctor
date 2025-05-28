import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:s7tk/widget/custom_button.dart';
import 'package:s7tk/widget/custom_text_field.dart';

class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({super.key});
GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          CustomTextFiled(icon: Icons.person, hintText: "البريد الالكتروني", controller: emailController),
          CustomTextFiled(icon: Icons.lock, hintText: "ألرقم السري", controller: passwordController), 
          SizedBox(height: 20.h),
          CustomButton(text: "تسجيل الدخول"),
        ],
      ),
    );
  }
}
