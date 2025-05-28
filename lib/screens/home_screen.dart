
import 'package:flutter/material.dart';
import 'package:s7tk/widget/home_screens_body.dart';
import 'package:s7tk/widget/settings_screens_body.dart';


class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});
  static const String id = 'homeScreens';

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreensBody(),
    SettingsScreensBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Use the currentIndex variable
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),
        ],
      ),
      drawer: Drawer(),
      appBar: AppBar(),
      body: screens[currentIndex],
    );
  }
}
