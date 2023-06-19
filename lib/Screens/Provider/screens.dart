
import 'package:electra/Screens/Provider/OrdersScreen.dart';
import 'package:electra/Screens/Provider/ProviderStationsScreen.dart';
import 'package:electra/Screens/Provider/SettingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Consumer/con_home.dart';

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: OrdersPage());
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  // if (condition)  //user type provider
                    //  return CupertinoPageScaffold(child: ProviderStation());
                  // else 
                    return CupertinoPageScaffold(child: ConHome());
                  
                 
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: SettingScreen());
                },
              );
            default:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: ProviderStation());
                },
              );
          }
        });
  }
}

