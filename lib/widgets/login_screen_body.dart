import 'package:flutter/material.dart';
import 'package:s7tk/constants.dart';
import 'package:s7tk/screens/home_screens.dart';
import 'package:s7tk/screens/signup_screens.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:s7tk/widgets/custom_image.dart';
import 'package:s7tk/widgets/custom_text_filed.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomImage(),
              CustomTextFiled(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ادخل البريد الإلكتروني أو رقم الهاتف";
                  }

                  final isValidPhone =
                      RegExp(r'^(010|011|012|015)\d{8}$').hasMatch(value);
                  final isValidEmail =
                      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value);

                  if (!isValidPhone && !isValidEmail) {
                    return 'البريد الإلكتروني أو رقم الهاتف غير صحيح';
                  }

                  return null;
                },
                controller: usernameController,
                hintText: "البريد الالكتروني او رقم الهاتف",
                icon: Icons.person,
              ),
              CustomTextFiled(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "ادخل كلمه المرور";
                  }
                  if (value.length < 8) {
                    return 'كلمه المرور يجب ان تكون 8 احرف على الاقل';
                  }
                  return null;
                },
                obscureText: true,
                controller: passwordController,
                icon: Icons.lock,
                hintText: "كلمه المرور",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("هل نسيت كلمه المرور ؟"),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setString(
                      'username',
                      usernameController.text,
                    );

                    Navigator.pushNamed(context, HomeScreens.id);
                  }
                },
                child: Text("تسجيل الدخول"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignupScreens.id);
                        },
                        child: Text(
                          "انشي حساب",
                          style: TextStyle(
                              color: kprimary, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("       ليس لديك حساب ؟"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
