import 'package:flutter/material.dart';
import 'package:s7tk/widget/custom_text_field.dart';

class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({super.key});
GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFiled(icon: Icons.person, hintText: "البريد الالكتروني", controller: emailController)
      ],
    );
  }
}
