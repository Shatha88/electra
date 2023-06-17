import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom(
      {super.key,
      required this.title,
      required this.width,
      required this.hight,
      required this.forward,
      required this.buttonColor,
      required this.textColor,
      required this.screen});
  final String title;
  final double width;
  final double hight;
  final bool forward;
  final Color buttonColor;
  final Color textColor;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          // elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: width, vertical: hight)),
      onPressed: () {
        // Respond to button press
        if (forward) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        } else {
          if (Navigator.canPop(context)) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => screen),
                (route) => false);
          }
        }
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }
}
