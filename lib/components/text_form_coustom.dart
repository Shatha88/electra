import 'package:electra/constents/colors_theme.dart';
import 'package:flutter/material.dart';


class TextFormCoustom extends StatefulWidget {
  TextFormCoustom(
      {super.key,
      required this.hint,
      required this.label,
      this.icon,
      this.isPassword = false,
      this.controller,
      this.onchanged,
      this.onSaved,
      this.obscureText = false,
      this.maxLines,
      this.validator,
      this.minLines, this.cursorColor});

  final String hint;
  final String label;
  final IconData? icon;
  final bool? isPassword;
  final TextEditingController? controller;
  final Function(String)? onchanged;
  final Function(String?)? onSaved;
  final bool obscureText;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;
  final Color? cursorColor;

  @override
  State<TextFormCoustom> createState() => _TextFormCoustomState();
}

class _TextFormCoustomState extends State<TextFormCoustom> {
  var isVisible = false;
  @override
  void initState() {
    super.initState();
    isVisible = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          validator: widget.validator,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          enabled: true,
          controller: widget.controller,
          obscureText: isVisible,
          obscuringCharacter: "*",
          cursorColor: widget.cursorColor,
          cursorWidth: 5,
          decoration: InputDecoration(
              fillColor: txtFieldBGColor,
              filled: true,
              hintText: widget.hint,
              labelText: widget.label,
              prefixIcon: Icon(
                widget.icon,
                color: buttonBGColor,
              ),
              suffixIcon: widget.isPassword!
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        isVisible
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        color: buttonBGColor,
                      ))
                  : null,
              labelStyle: const TextStyle(
                  color: buttonBGColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: buttonBGColor),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: buttonBGColor))),
        ));
  }
}
