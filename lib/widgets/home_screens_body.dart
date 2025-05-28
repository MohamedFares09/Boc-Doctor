import 'package:flutter/material.dart';
class HomeScreensBody extends StatelessWidget {
  const HomeScreensBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("مرحبا بك في التطبيق"),
          Text("هذا هو المحتوى الرئيسي"),
        ],
      ),
    );
  }
}
