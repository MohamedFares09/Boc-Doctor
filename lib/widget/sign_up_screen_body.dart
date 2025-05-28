import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:s7tk/widget/custom_button.dart';
import 'package:s7tk/widget/custom_text_field.dart';

class SignUpScreenBody extends StatelessWidget {
   SignUpScreenBody({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          CustomTextFiled(icon: Icons.person, hintText: "اسم المستخدم", controller: usernameController),
          CustomTextFiled(icon: Icons.email, hintText: "البريد الالكتروني", controller: emailController),
          CustomTextFiled(icon: Icons.lock, hintText: "ألرقم السري", controller: passwordController), 
          CustomTextFiled(icon: Icons.lock, hintText: "تأكيد الرقم السري", controller: confirmPasswordController),
          SizedBox(height: 20.h),
          CustomButton(text: "إنشاء حساب"),
        ],
      ),
    );
  }
}