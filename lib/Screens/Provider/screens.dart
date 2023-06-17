// import 'package:electra/constents/colors.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:flutter/material.dart';

import 'package:electra/Screens/Provider/prov_home.dart';
// import 'package:final_project/Screens/HomeScreen.dart';
// import '../conistans/colors.dart';

class Screens extends StatefulWidget {
  const Screens({super.key,this.selectedScreen = 0});
 final int selectedScreen;
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Container(),
    const ProviderHome(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.teal,
          boxShadow: [],
        ),
        child: BottomNavigationBar(
          selectedItemColor: iconsColor,
          unselectedItemColor: Colors.grey,

          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(
                  Icons.notifications,
                  // color: Colors.grey,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  // color: Colors.grey,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  // color: Colors.grey,
                  size: 30,
                ),
                label: ""),
          ],
          // selectedIconTheme: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
