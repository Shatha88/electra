import 'package:flutter/material.dart';

class textfeldecustom extends StatefulWidget {
  const textfeldecustom({
    super.key,
    this.controller,
    required this.titel,
    required this.iconData,
    this.minLine = 1,
    this.maxLine = 1,
  });
  final TextEditingController? controller;

  final String titel;
  final IconData iconData;
  final int minLine;
  final int maxLine;

  @override
  State<textfeldecustom> createState() => _textfeldecustomState();
}

class _textfeldecustomState extends State<textfeldecustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      enabled: true,
      cursorColor: Color.fromARGB(255, 74, 74, 74),
      cursorWidth: 2,
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          widget.iconData,
          color: Colors.black,
        ),
        labelText: widget.titel,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
