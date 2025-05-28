import 'package:flutter/material.dart';

class SettingsScreensBody extends StatelessWidget {
  const SettingsScreensBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("الإعدادات"),
          trailing: Icon(Icons.settings),
          onTap: () {
            // Navigate to settings screen
          },
        ),
        ListTile(
          title: Text("تسجيل الخروج"),
          trailing: Icon(Icons.logout),
          onTap: () {
            // Perform logout action
          },
        ),
      ],
    );
  }
}