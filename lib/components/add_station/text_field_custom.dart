import 'package:flutter/material.dart';

 class TextFieldCustom extends StatefulWidget {
   const TextFieldCustom({
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
   State<TextFieldCustom> createState() => TextFieldCustomState();
 }

 class TextFieldCustomState extends State<TextFieldCustom> {
   @override
   Widget build(BuildContext context) {
     return TextField(
       controller: widget.controller,
       enabled: true,
       cursorColor: const Color.fromARGB(255, 74, 74, 74),
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
         labelStyle: const TextStyle(color: Colors.black),
         border: const OutlineInputBorder(),
         disabledBorder: const OutlineInputBorder(
           borderSide: BorderSide(
             color: Colors.white,
           ),
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: const BorderSide(color: Colors.black),
         ),
       ),
     );
   }
 }