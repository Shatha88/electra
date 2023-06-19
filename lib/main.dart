import 'package:electra/Screens/Auth/homeScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/Provider/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Screens(), TODO: UNCOMMRNT
      home: HomeScreen(),
    );
  }
}
