import 'package:electra/components/Provider/Componints/SettingScreen/SettingAccountData.dart';
import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: TextCustom(
                text: "Setting",
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            kVSpace64,
            ListView(
              shrinkWrap: true,
              children: [
                SettingsTitle(
                  title: "Account",
                  icon: Icons.person_outline,
                ),
                Divider(
                  thickness: 2,
                ),
                kVSpace8,
                SettingAccountData(),
                kVSpace24,
                SettingsTitle(
                  title: "Payment Card",
                  icon: Icons.credit_card,
                ),
                Divider(
                  thickness: 2,
                ),
                kVSpace8,
                kVSpace64,
                kVSpace64,
                kVSpace64,
                kVSpace8,
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Background color
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.logout,
                            size: 30,
                          ),
                          TextCustom(
                            text: "Logout",
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: buttonBGColor,
        ),
        kHSpace8,
        TextCustom(
          text: title,
          color: buttonBGColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
