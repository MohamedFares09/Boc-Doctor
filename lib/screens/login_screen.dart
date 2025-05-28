import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:s7tk/widget/login_screen_body.dart';
import 'package:s7tk/widget/sign_up_screen_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
           SizedBox(height: 80.h),
          
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
              
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isLogin
                            ? const Color(0xFF2BD0CE)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          color: isLogin ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // زر "إنشاء حساب"
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: !isLogin
                            ? const Color(0xFF2BD0CE)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(30.sp),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          color: !isLogin ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
           SizedBox(height: 30.h),

          if (isLogin)
            LoginScreenBody()
          else
             SignUpScreenBody(),
        ],
      ),
    );
  }
}
