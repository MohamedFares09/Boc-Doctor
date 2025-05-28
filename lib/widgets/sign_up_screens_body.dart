import 'package:flutter/material.dart';
import 'package:s7tk/constants.dart';
import 'package:s7tk/widgets/custom_image.dart';
import 'package:s7tk/widgets/custom_text_filed.dart';

class SignUpScreensBody extends StatelessWidget {
  const SignUpScreensBody({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: CustomImage(),
              ),
              CustomTextFiled(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "الرجاء ادخال اسم المستخدم";
                  }
                  if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]{2,}$').hasMatch(value)) {
                    return 'يجب ان يكون اسم المستخدم مكون من احرف فقط';
                  }
                  return null;
                },
                controller: usernameController,
                icon: Icons.person,
                hintText: "اسم المستخدم ",
              ),
              CustomTextFiled(
                controller: emailController,
                icon: Icons.email,
                hintText: " البريد الالكتروني",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "الرجاء ادخال البريد الالكتروني";
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'البريد الالكتروني غير صحيح';
                  }
                  return null;
                },
              ),
              CustomTextFiled(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "الرجاء إدخال رقم الهاتف";
                  }
                  if (!RegExp(r'^(010|011|012|015)\d{8}$').hasMatch(value)) {
                    return 'رقم الهاتف غير صحيح، يجب أن يبدأ بـ 010 أو 011 أو 012 أو 015 ويحتوي على 11 رقمًا';
                  }

                  return null;
                },
                controller: phoneController,
                icon: Icons.phone,
                hintText: "رقم الهاتف",
              ),
              CustomTextFiled(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "الرجاء إدخال كلمه المرور";
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
              CustomTextFiled(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "الرجاء إدخال كلمه المرور";
                  }
                  if (value.length < 8) {
                    return 'كلمه المرور يجب ان تكون 8 احرف على الاقل';
                  }
                  if (value != passwordController.text) {
                    return 'كلمه المرور غير متطابقة';
                  }
                  return null;
                },
                obscureText: true,
                controller: confirmPasswordController,
                icon: Icons.lock,
                hintText: "تاكيد كلمه المرور",
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // Perform signup action
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("تسجيل")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "سجل دخول",
                        style: TextStyle(
                            color: kprimary, fontWeight: FontWeight.bold),
                      )),
                  Text("    هل لديك حساب بالفعل ؟ "),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
