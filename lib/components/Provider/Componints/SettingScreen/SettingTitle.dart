
import 'package:electra/components/Provider/Componints/text_custom.dart';
import 'package:electra/constents/colors_theme.dart';
import 'package:electra/constents/spaces.dart';
import 'package:flutter/material.dart';

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
