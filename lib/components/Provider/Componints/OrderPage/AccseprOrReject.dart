
import 'package:flutter/material.dart';

class AccseprOrReject extends StatelessWidget {
  const AccseprOrReject({
    super.key,
    required this.color,
    required this.titel,
  });
  final Color color;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            titel,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
