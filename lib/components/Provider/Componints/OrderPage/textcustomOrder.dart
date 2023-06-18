import 'package:flutter/material.dart';

class textcustomOrder extends StatelessWidget {
  const textcustomOrder({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff938E8E),
          ),
        ),
      ),
    );
  }
}
