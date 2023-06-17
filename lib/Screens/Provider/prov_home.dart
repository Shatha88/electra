import 'package:electra/Screens/Provider/add_station.dart';
import 'package:electra/components/button_custom.dart';
import 'package:electra/components/text_custom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class ProviderHome extends StatelessWidget {
  const ProviderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                kVSpace8,
                const Text(
                  "Provider Name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: headersColor,
                  ),
                ),
                kVSpace64,
                kVSpace64,
                // Icon(
                //   LineIcons.chargingStation,
                //   size: 200,
                //   color: iconsColor,
                // ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: txtFieldBGColor),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/charging-station.png',
                      width: 260,
                      height: 260,
                    ),
                  ),
                ),
                const TextCustom(
                  text: "You don't have a staion",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: headersColor,
                ),
                kVSpace64,
                kVSpace64,
                const ButtonCustom(
                  title: "Add Station",
                  screen: AddStation(),
                  buttonColor: buttonBGColor,
                  forward: true,
                  hight: 20,
                  width: 100,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
